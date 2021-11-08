// ignore_for_file: unnecessary_this, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:movieapp/components/actors.dart';
import 'package:movieapp/components/similar.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Details extends StatelessWidget {
  // const Details(movieData, {Key? key}) : super(key: key);
  late final Map movieData;
  // Detail(this.movieData);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final String _titlePath = this.movieData['backdrop_path'];
    final String movieName = this.movieData['title'];
    final String movieOverview = this.movieData['overview'];
    final int movieId = this.movieData['id'];
    return Scaffold(
      appBar: PreferredSize(
        child: SafeArea(
          child: AppBar(
            flexibleSpace: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: "http://image.tmdb.org/t/p/w780/$_titlePath",
              fit: BoxFit.cover,
            ),
          ),
        ),
        preferredSize: Size.fromHeight(size.height / 3),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10.0),
            Text(
              movieName,
              style:
                  const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(
              movieOverview,
              style: const TextStyle(
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(
                  FontAwesomeIcons.check,
                  size: 25.0,
                ),
                Icon(
                  FontAwesomeIcons.shareAlt,
                  size: 25.0,
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Text('My List'),
                Text('Share'),
              ],
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Cast',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Actors(movieId),
            const SizedBox(height: 10.0),
            const Text(
              'Similar movies',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SimilarMovies(movieId),
          ],
        ),
      ),
    );
  }
}
