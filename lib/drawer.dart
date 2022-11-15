import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';

class appDrawer extends StatelessWidget {
  const appDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lightGreen,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Counter_7'),
            leading: const Icon(Icons.home),
            onTap: () {
              // Route to the home page
              // Route menu ke halaman utama
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Program Counter Home Page',)));
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            leading: const Icon(Icons.addchart),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            leading: const Icon(Icons.account_balance_wallet),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}