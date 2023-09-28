import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:todo/application/routes/routes.dart';
import 'package:todo/presentation/widgets/export_common_widgets.dart';
import 'package:todo/presentation/widgets/message_snackbar.dart';
import 'package:todo/utils/colors/colors.dart';

import '../../../business_logic/todo/todo_bloc.dart';
import '../../tabs/export_tabs.dart';
import 'screen_utils/add_todo_bottomsheet.dart';
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
        body: BlocConsumer<TodoBloc, TodoState>(
          listener: (context, state) {
            if (state.addStatus != null) {
              if (state.addStatus == 'Todo successfully added') {
                messageSnackbar(
                    context: context,
                    message: state.addStatus!,
                    isError: false);
              } else {
                messageSnackbar(context: context, message: state.addStatus!);
              }
            }
            if (state.updataStatus != null) {
              if (state.updataStatus == 'Todo status updated') {
                messageSnackbar(
                    context: context,
                    message: state.updataStatus!,
                    isError: false);
              } else {
                messageSnackbar(context: context, message: state.updataStatus!);
              }
            }
            if (state.deleteStatus != null) {
              if (state.deleteStatus == 'Todo deleted') {
                messageSnackbar(
                    context: context,
                    message: state.deleteStatus!,
                    isError: false);
              } else {
                messageSnackbar(context: context, message: state.deleteStatus!);
              }
            }
          },
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
              addTodoBottomSheet(context);
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
