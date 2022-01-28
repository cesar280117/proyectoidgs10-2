import 'package:flutter/material.dart';

class ContadorPage extends StatelessWidget {
  const ContadorPage({Key? key}) : super(key: key);
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
          children: const [
            Text(
              'Numero actual del contador',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '0',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.purple,
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            backgroundColor: Colors.purple,
            onPressed: () {},
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            tooltip: 'Resetear contador',
            backgroundColor: Colors.purple,
            onPressed: () {},
            child: const Icon(Icons.restart_alt),
          ),
        ],
      ),
    );
  }
}
