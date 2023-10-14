import 'package:calculatorimcsqlite/pages/configuration_page.dart';
import 'package:calculatorimcsqlite/pages/login_page.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                ClipOval(
                  child: Image.network(
                    "https://static.vecteezy.com/ti/vetor-gratis/p1/14655541-icone-de-linha-pontilhada-azul-do-usuario-do-perfil-de-personalizacao-pessoal-gratis-vetor.jpg",
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  "Username",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text("Configurações"),
            leading: const Icon(Icons.settings),
            onTap: () {
              _onListTileTapped(context);
            },
          ),
          Expanded(child: Container()),
          ListTile(
            title: const Text("Sair"),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {
              _showLogoutDialog(context);
            },
          ),
        ],
      ),
    );
  }

  void _onListTileTapped(BuildContext context) {
    _closeDrawer(context);
    _goToSettingsPage(context);
  }

  void _goToSettingsPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const ConfigurationPage(),
      ),
    );
  }

  void _closeDrawer(BuildContext context) {
    Navigator.pop(context);
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext bc) {
        return AlertDialog(
          alignment: Alignment.centerLeft,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: const Text(
            'Meu App',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: const Wrap(children: [
            Text('Deseja realmente sair da Calculadora?'),
          ]),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Não'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: const Text('Sim'),
            ),
          ],
        );
      },
    );
  }
}
