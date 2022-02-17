import 'package:contador/controllers/menu_controller.dart';
import 'package:contador/pages/card_page.dart';
import 'package:contador/pages/contador_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuControllerPages extends StatelessWidget {
  const MenuControllerPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Menu controller'),
        ),
        body: GetBuilder<MenuController>(
          builder: (menuController) {
            if (menuController.index == 0) {
              return ContadorPage();
            } else if (menuController.index == 1) {
              return const CardPage();
            } else {
              return Container();
            }
          },
        ),
        bottomNavigationBar: GetBuilder<MenuController>(
          builder: (menuController) {
            return BottomNavigationBar(
                onTap: (index) {
                  menuController.indexPage(index);
                },
                currentIndex: menuController.index,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.arrow_forward_ios),
                    label: 'Contador',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.privacy_tip_rounded),
                    label: 'cartas',
                  ),
                ]);
          },
        ));
  }
}
