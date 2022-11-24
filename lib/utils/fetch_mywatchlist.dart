import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:counter_7/model/mywatchlist.dart';

Future<List<MyWatchlist>> fetchMyWatchlist() async {
  var url = Uri.parse('https://pbp-tugas2.herokuapp.com/mywatchlist/json/');
  var response = await http.get(url, headers: {
    "Access-Control-Allow-Origin": "*",
    'Content-Type': 'application/json',
  },);

  // decode response to json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // convert json to list of MyWatchlist
  List<MyWatchlist> arrMywatchlist = [];
  for (var item in data) {
    if (item != null) {
      arrMywatchlist.add(MyWatchlist.fromJson(item));
    }
    // mywatchlist.add(MyWatchlist.fromJson(item));
  }

  return arrMywatchlist;
}

