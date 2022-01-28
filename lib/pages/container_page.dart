import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('seccion de container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://dam.esquirelat.com/wp-content/uploads/2020/07/STANLEE.jpg'),
                    fit: BoxFit.cover),
                boxShadow: const [
                  BoxShadow(color: Colors.pink, blurRadius: 15.0)
                ],
                color: Colors.pink,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              width: 170,
              height: 170,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://steamuserimages-a.akamaihd.net/ugc/1665734710922767915/E27CB59BE909BA8F64A424B4475D9436D576C76B/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false'),
                  fit: BoxFit.cover,
                ),
                boxShadow: const [
                  BoxShadow(color: Colors.red, blurRadius: 20.0)
                ],
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(90),
              ),
            ),
            Container(
              height: 170,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/94/f3/9f/94f39fd4a3fe70db22bbe974b9144c27.jpg'),
                    fit: BoxFit.cover),
                boxShadow: [BoxShadow(blurRadius: 15.0, color: Colors.blue)],
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
