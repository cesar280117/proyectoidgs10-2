import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Seccion de formulario'),
      ),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              const Text(
                'Capture los datos',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person, color: Colors.purple),
                    labelText: 'Nombre',
                    hintText: 'Captura el nombre',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email, color: Colors.purple),
                    labelText: 'Email',
                    hintText: 'Ejemplo@gmail.com',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock, color: Colors.purple),
                    labelText: 'Password',
                    hintText: '*********',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(height: 20),
              MaterialButton(
                textColor: Colors.white,
                minWidth: 150,
                splashColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {},
                child: const Text(
                  'Aceptar',
                ),
                color: Colors.purple,
              )
            ],
          )),
    );
  }
}
