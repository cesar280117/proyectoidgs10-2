import 'package:contador/controllers/contador_controllers.dart';
import 'package:contador/controllers/figuras_controller.dart';
import 'package:contador/controllers/menu_controller.dart';
import 'package:contador/pages/card_page.dart';
import 'package:contador/pages/contador_page.dart';
import 'package:contador/pages/container_page.dart';
import 'package:contador/pages/examen1_page.dart';
import 'package:contador/pages/figura_pages.dart';
import 'package:contador/pages/form_page.dart';
import 'package:contador/pages/list_view_pages.dart';
import 'package:contador/pages/menu_controller_pages.dart';
import 'package:contador/pages/menu_page.dart';
import 'package:contador/pages/stack_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => FigurasController());
  Get.lazyPut(() => ContadorControllers());
  Get.lazyPut(() => MenuController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IDGS10-2',
      initialRoute: '/figura',
      routes: {
        '/menu': (context) => const MenuPage(),
        '/contador': (context) => ContadorPage(),
        '/container': (context) => const ContainerPage(),
        '/card': (context) => const CardPage(),
        '/stack': (context) => const StackPage(),
        '/listView': (context) => const ListViewPage(),
        '/form': (context) => const FormPage(),
        '/examen1': (context) => const Examen1Pages(),
        '/menu_controller': (context) => const MenuControllerPages(),
        '/figura': (context) => FiguraPages()
      },
    );
  }
}
