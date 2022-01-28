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
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 380,
          width: double.infinity,
          child: Card(
              elevation: 15,
              shadowColor: Colors.pink,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://p4.wallpaperbetter.com/wallpaper/346/493/314/cats-cat-wallpaper-preview.jpg',
                    fit: BoxFit.cover,
                    height: 220,
                    width: double.infinity,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 15),
                    child: const Text(
                      'Gatito bonito :3',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: const Text(
                        'El gato doméstico​​, llamado más comúnmente gato, y de forma coloquial minino, ​ michino, ​ michi, ​ micho, ​ mizo, ​ miz, ​ morroño​ o morrongo, ​ y algunos nombres más, es un mamífero carnívoro de la familia Felidae.'),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
