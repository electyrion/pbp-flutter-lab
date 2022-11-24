import 'package:counter_7/page/mywatchlist_page.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
// import 'package:counter_7/budget.dart';
import 'package:counter_7/page/budget_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

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
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const MyHomePage(
                        title: 'Program Counter Home Page',
                      )));
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            leading: const Icon(Icons.attach_money),
            onTap: () {
              // Update the state of the app.
              // close navigation drawer before
              Navigator.pop(context);
              // Route menu ke halaman form
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MyFormPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            leading: const Icon(Icons.account_balance_wallet),
            onTap: () {
              // Update the state of the app.
              Navigator.pop(context);
              // Route menu ke halaman data
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MyDataPage()),
              );
            },
          ),
          ListTile(
            title: const Text("My Watchlist"),
            leading: const Icon(Icons.airline_stops),
            onTap: () {
              // Update the state of the app.
              Navigator.pop(context);
              // Route menu ke halaman data
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
              );
            },
          )
        ],
      ),
    );
  }
}
