import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar:  AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          // Adicione o ícone do menu do drawer
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          title: const Text('My Awesome App'),
        ),
        // Adicione o drawer
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Opção 1'),
                onTap: () {
                  // Adicione o código para a ação da opção 1
                },
              ),
              ListTile(
                title: const Text('Opção 2'),
                onTap: () {
                  // Adicione o código para a ação da opção 2
                },
              ),
              // Adicione mais opções do drawer, se necessário
            ],
          ),
        ),
      ),
    );
  }
}