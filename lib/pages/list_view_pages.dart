import 'package:contador/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Seccion de listView'),
        ),
        body: ListView(
          children: [
            CardWidget(
              shadowColor: Colors.pink,
              urlImagen:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh32Vcb8-KYakjjQ7OxxcP1ySJzgiVBHgBdw&usqp=CAU',
              titulo: 'Gato man',
              descripcion: 'Un gato muy lindo y cacheton:)',
            ),
            const SizedBox(height: 30),
            CardWidget(
                urlImagen:
                    'https://i.pinimg.com/originals/5f/a0/6e/5fa06e7d9fdf561a6aecceef17a2aa69.jpg',
                descripcion: 'el perro guaton es muy bonito aveces',
                titulo: 'perro blanco XD'),
            const SizedBox(height: 30),
            CardWidget(
              shadowColor: Colors.pink,
              urlImagen:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh32Vcb8-KYakjjQ7OxxcP1ySJzgiVBHgBdw&usqp=CAU',
              titulo: 'Gato man',
              descripcion: 'Un gato muy lindo y cacheton:)',
            ),
            const SizedBox(height: 30),
            CardWidget(
                urlImagen:
                    'https://i.pinimg.com/originals/5f/a0/6e/5fa06e7d9fdf561a6aecceef17a2aa69.jpg',
                descripcion: 'el perro guaton es muy bonito aveces',
                titulo: 'perro blanco XD'),
            const SizedBox(height: 30),
          ],
        ));
  }
}
