import 'package:apiamiibos2/api/peticiones_api.dart';
import 'package:apiamiibos2/controllers/amiibo_controller.dart';
import 'package:apiamiibos2/pages/home_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => PeticionesApi());
  Get.lazyPut(() => AmiiboController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amiibos',
      initialRoute: '/',
      routes: {
        '/': (context) =>  HomePages(),
      },
    );
  }
}
