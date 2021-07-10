import 'package:flutter/material.dart';
import '../utils/CategoryClass.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CategoryClass category = new CategoryClass(
        category: 'Trending',
        url: '/trending/all/week?api_key=964cbc730fb8dc2d38d1c0b3520130d1&language=en-US');
  void getMovies() {
    category.getData();
  }

  @override
  void initState() {
    super.initState();
    getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          '../../images/logo.png',
          height: 45,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search icon pressed');
            },
          ),
          IconButton(
            icon: Image.asset('../../images/default_avatar.png'),
            onPressed: () {
              print('Default avatar pressed');
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'TV Shows',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
              Text(
                'Movies',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
              Text(
                'My List',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Continue Watching for Gautam',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        child: Image.network(
                          'https://image.tmdb.org/t/p/original/keIxh0wPr2Ymj0Btjh4gW7JJ89e.jpg',
                          width: 160,
                          height: 100,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 160,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 160,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 160,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 160,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 160,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
