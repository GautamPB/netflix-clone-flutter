import 'package:http/http.dart';
import 'dart:convert';

class CategoryClass {
  String category;
  String url;
  var results = [];
  Map data = {};
  int dataLength = 0;

  CategoryClass({this.category, this.url});

  Future<void> getData() async {
    Response response =
        await get(Uri.parse('https://api.themoviedb.org/3$url'));
    this.data = json.decode(response.body);
    this.results = data["results"];
    this.dataLength = results.length;
  }
}
