import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/drawer.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  ListTile(
                    leading: const Icon(
                      Icons.alarm,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Opção 1',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // Adicione o código para a ação da opção 1
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Opção 2',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // Adicione o código para a ação da opção 2
                    },
                  ),
                  //const SizedBox(height: 300),
                  const Divider(color: Colors.white),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Adicione o código para a ação de logout
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}