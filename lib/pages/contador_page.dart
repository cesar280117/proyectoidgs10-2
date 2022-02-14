import 'package:contador/controllers/contador_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContadorPage extends StatelessWidget {
  ContadorPage({Key? key}) : super(key: key);
  final contadorController = Get.find<ContadorControllers>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Numero actual del contador',
              style: TextStyle(fontSize: 20.0),
            ),
            Obx(
              () => Text(
                contadorController.valor.value.toString(),
                style: const TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.purple,
            onPressed: () => contadorController.incrementar(),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            backgroundColor: Colors.purple,
            onPressed: () => contadorController.decrementar(),
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            tooltip: 'Resetear contador',
            backgroundColor: Colors.purple,
            onPressed: () => contadorController.resetear(),
            child: const Icon(Icons.restart_alt),
          ),
        ],
      ),
    );
  }
}
