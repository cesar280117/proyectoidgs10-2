import 'package:contador/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Seccion de card'),
      ),
      body: Center(
          child: CardWidget(
        urlImagen:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh32Vcb8-KYakjjQ7OxxcP1ySJzgiVBHgBdw&usqp=CAU',
        titulo: 'Gato man',
        descripcion: 'Un gato muy lindo y cacheton:)',
      )),
    );
  }
}
