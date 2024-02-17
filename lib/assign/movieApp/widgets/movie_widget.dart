import 'package:flutter/material.dart';
import 'package:untitled/assign/movieApp/screens/detail_screen.dart';

class Movie extends StatelessWidget {
  final int id;
  final String title, posterPath;
  const Movie({
    super.key,
    required this.id,
    required this.title,
    required this.posterPath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  DetailScreen(id: id, title: title, posterPath: posterPath),
            ));
      },
      child: Column(
        children: [
          Hero(
              tag: id,
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  posterPath,
                  width: 300,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ))
        ],
      ),
    );
  }
}
