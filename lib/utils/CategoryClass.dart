import 'package:http/http.dart';
import 'dart:convert';

class CategoryClass {
  String category;
  String url;
  Map results = {};

  CategoryClass({this.category, this.url});

  void getData() async {
    Response response =
        await get(Uri.parse('https://api.themoviedb.org/3$url'));
    this.results = json.decode(response.body);
    print(results);
  }
}
