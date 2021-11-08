// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:movieapp/screens/details.dart';

class HorizontalCards extends StatelessWidget {
  late final List movieData;
  HorizontalCards(this.movieData);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movieData.length,
        itemBuilder: (context, index) {
          final String posterPath = movieData[index]['poster_path'];
          return Container(
            // width: MediaQuery.of(context).size.width * 0.6,
            child: Card(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return Details();
                      },
                    ),
                  );
                },
                child: FadeInImage.assetNetwork(
                    placeholder: 'assets/images/loading.gif',
                    image: 'http://image.tmdb.org/t/p/w780/$posterPath'),
              ),
            ),
          );
        },
      ),
    );
  }
}
