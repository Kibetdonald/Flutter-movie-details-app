import 'package:flutter/material.dart';
import 'package:movieapp/components/imdb.dart';
import 'package:movieapp/components/trending.dart';
import 'package:movieapp/components/upcoming.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Text(
              'Trending Movies',
              style: TextStyle(fontSize: 18.0),
            ),
            TrendingMovies(),
            const Text(
              'Top Rated Movies',
              style: TextStyle(fontSize: 18.0),
            ),
            TopRated(),
            const Text(
              'Upcoming Movies',
              style: TextStyle(fontSize: 18.0),
            ),
            UpcomingMovies(),
          ],
        ),
      ),
    );
  }
}
