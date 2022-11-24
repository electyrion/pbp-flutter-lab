
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/utils/drawer.dart';
import 'package:counter_7/model/mywatchlist.dart';

class MyWatchlistPageDetail extends StatelessWidget {
  final MyWatchlist mywatchlist;

  const MyWatchlistPageDetail({Key? key, required this.mywatchlist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: const AppDrawer(),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    mywatchlist.title,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      const TextSpan(
                          text: 'Release date: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '${mywatchlist.releaseDate}\n'),
                      const TextSpan(
                          text: 'Rating: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '${mywatchlist.rating}/5\n'),
                      const TextSpan(
                          text: 'Status: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: (mywatchlist.isWatched)
                              ? "watched\n"
                              : "unwatched\n"),
                      const TextSpan(
                          text: 'Review: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "${mywatchlist.review}\n"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ]
        )
      ),
      
      // back button to previous page
      persistentFooterButtons: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightGreen,
            minimumSize: const Size.fromHeight(40),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Back',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      //   child: const Icon(Icons.arrow_back),
      // ),
    );
  }
}