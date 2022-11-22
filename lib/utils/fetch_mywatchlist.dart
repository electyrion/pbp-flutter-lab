import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:counter_7/model/mywatchlist.dart';

Future<List<MyWatchlist>> fetchMyWatchlist() async {
  var url = Uri.parse('https://pbp-tugas2.herokuapp.com/mywatchlist/json/');
  var response = await http.get(url, headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  });

  // decode response to json
  var data = json.decode(utf8.decode(response.bodyBytes));

  // convert json to list of MyWatchlist
  List<MyWatchlist> mywatchlist = [];
  for (var item in data) {
    mywatchlist.add(MyWatchlist.fromJson(item));
  }

  return mywatchlist;
}

