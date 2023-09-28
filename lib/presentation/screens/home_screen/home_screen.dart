import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:todo/application/routes/routes.dart';
import 'package:todo/business_logic/bloc/todo_bloc.dart';
import 'package:todo/presentation/widgets/export_common_widgets.dart';
import 'package:todo/utils/colors/colors.dart';

import '../../tabs/export_tabs.dart';
import 'screen_utils/logout_dialoge.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<TodoBloc>().add(const GetAllTodos());
    });
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: BlocSelector<TodoBloc, TodoState, String>(
            selector: (state) {
              return state.userName;
            },
            builder: (context, state) {
              return Text("Hi, $state");
            },
          ),
          actions: [
            IconButton(
                onPressed: () async {
                  logoutDialoge(context);
                },
                icon: const Icon(Iconsax.logout_1))
          ],
          bottom: const TabBar(tabs: [
            Tab(
              text: "Todo's",
            ),
            Tab(
              text: "Completed",
            )
          ]),
        ),
        body: BlocBuilder<TodoBloc, TodoState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: LoadingAnimationWidget.waveDots(
                    color: customprimarycolor, size: 30),
              );
            } else if (state.hasError) {
              return const Center(
                child: Text('Error occured'),
              );
            } else if (state.errorMsg != null) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(state.errorMsg ?? 'Please login again'),
                    CustomElevatedButton(
                      buttonLabel: "Goto Login Page",
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            ScreenRoutes.login, (route) => false);
                      },
                    )
                  ],
                ),
              );
            } else {
              return TabBarView(children: [
                TodoTab(todoList: state.todoList),
                CompletedTab(
                  completed: state.completed,
                )
              ]);
            }
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            backgroundColor: customprimarycolor,
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Container(),
              );
            },
            label: const Text(
              'Add Todo',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            )),
      ),
    );
  }
}
