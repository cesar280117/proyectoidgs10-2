import 'package:flutter/material.dart';

class Examen1Pages extends StatelessWidget {
  const Examen1Pages({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Examen de prueba'),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 23, color: Colors.blue)],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90),
                      bottomRight: Radius.circular(90)),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://static9.depositphotos.com/1049184/1095/i/600/depositphotos_10951622-stock-photo-blue-background.jpg'),
                      fit: BoxFit.cover),
                ),
                width: double.infinity,
                height: 300,
              ),
              const CircleAvatar(
                radius: 130,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                  'https://images.vexels.com/media/users/3/233849/isolated/preview/f4342db206fea0052a80b2c33395ba42-dibujos-animados-de-tiburon-martillo-feliz.png',
                ),
              ),
              const Positioned(
                top: 190,
                child: CircleAvatar(
                  child: Text(
                    'i',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 130),
          const Icon(
            Icons.arrow_downward_rounded,
            color: Colors.blue,
            size: 50,
          ),
          const Text(
            'Like',
            style: TextStyle(color: Colors.blue, fontSize: 30),
          )
        ],
      ),
    );
  }
}
