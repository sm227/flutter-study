import 'package:flutter/material.dart';
import 'package:untitled/assign/movieApp/screens/detail_screen.dart';

class Movie extends StatelessWidget {
  final index = 1;
  final int id;
  final double width, height;
  final vote;
  final String title, posterPath, overView;
  const Movie({
    super.key,
    required this.id,
    required this.title,
    required this.posterPath,
    required this.width,
    required this.height,
    required this.overView,
    required this.vote,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                id: id,
                title: title,
                posterPath: posterPath,
                index: index,
                overView: overView,
                vote: vote,
              ),
            ));
      },
      child: Column(
        children: [
          Hero(
              tag: index + id,
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  posterPath,
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                ),
              ))
        ],
      ),
    );
  }
}
