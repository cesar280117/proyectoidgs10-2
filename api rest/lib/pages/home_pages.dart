import 'package:apiamiibos2/controllers/amiibo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePages extends StatelessWidget {
  HomePages({Key? key}) : super(key: key);
  final amiibocontroller = Get.find<AmiiboController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('amiibos'),
      ),
      body: GetBuilder<AmiiboController>(builder: (amiiboController) {
        return ListView.builder(
            itemCount: amiiboController.amiibos.length,
            itemBuilder: (context, i) {
              final amiibo = amiibocontroller.amiibos[i];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(amiibo.image!),
                ),
                title: Text(amiibo.name!),
                subtitle: Text('Figure'),
              );
            });
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          amiibocontroller.obtenerAmiibos();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
