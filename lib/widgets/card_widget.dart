import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String urlImagen;
  final String titulo;
  final String descripcion;
  final Color? shadowColor;

  CardWidget({
    required this.urlImagen,
    required this.descripcion,
    required this.titulo,
    this.shadowColor = Colors.orange,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 380,
      width: double.infinity,
      child: Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 15,
          shadowColor: shadowColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInImage(
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/images/loading.gif'),
                image: NetworkImage(urlImagen),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  titulo,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: Text(descripcion),
              )
            ],
          )),
    );
  }
}
