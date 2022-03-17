import 'package:contador/controllers/figuras_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FiguraPages extends StatelessWidget {
  FiguraPages({Key? key}) : super(key: key);
  final figurasController = Get.find<FigurasController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Figura geometrica'),
      ),
      body: Center(
          child: GetBuilder<FigurasController>(
        builder: (figurasController) => Container(
          width: 170,
          height: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            color: figurasController.color,
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          figurasController.cambioColor();
        },
        child: const Icon(Icons.circle),
      ),
    );
  }
}
