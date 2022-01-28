import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Menu de widgets'),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/contador'),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.purple),
            leading: const Icon(Icons.tag, color: Colors.purple),
            title: const Text('Contador'),
          ),
          const Divider(),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/container'),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.purple),
            leading: const Icon(Icons.contact_mail, color: Colors.purple),
            title: const Text('Container'),
          ),
        ],
      ),
    );
  }
}
