import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'screen_utils/logout_dialoge.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                logoutDialoge(context);

                
              },
              icon: const Icon(Iconsax.logout_1))
        ],
      ),
    );
  }


}
