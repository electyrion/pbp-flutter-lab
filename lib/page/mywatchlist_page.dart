import 'package:flutter/material.dart';
import 'package:counter_7/utils/drawer.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/utils/fetch_mywatchlist.dart';
import 'package:counter_7/page/mywatchlist_pagedetail.dart';

class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({Key? key}) : super(key: key);

  @override
  State<MyWatchlistPage> createState() => _MyWatchlistPageState();
}

class _MyWatchlistPageState extends State<MyWatchlistPage> {
  @override
  Widget build(BuildContext context) {
    ListTile addListTile(MyWatchlist myWatchlist) => ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          title: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              myWatchlist.title,
            ),
          ),
          trailing: Checkbox(
            value: myWatchlist.isWatched,
            onChanged: (bool? newValue) {
              setState(() {
                myWatchlist.isWatched = !myWatchlist.isWatched;
              });
            },
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MyWatchlistPageDetail(mywatchlist: myWatchlist)));
          },
        );

    Card addCard(MyWatchlist myWatchlist) => Card(
          margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          elevation: 7,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: myWatchlist.isWatched ? Colors.green : Colors.red,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Container(
            child: addListTile(myWatchlist),
          ),
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: const AppDrawer(),
      body: FutureBuilder(
          future: fetchMyWatchlist(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return Column(
                  children: const [
                    Text(
                      "Watchlist is empty",
                      style: TextStyle(color: Color.fromARGB(255, 18, 226, 84), fontSize: 20),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => addCard(snapshot.data![index]));
              }
            }
          }),
    );
  }
}