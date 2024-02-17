import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int id;
  final String title, posterPath;

  const DetailScreen({
    super.key,
    required this.id,
    required this.title,
    required this.posterPath,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: id,
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(posterPath))),
          child: Scaffold(
            backgroundColor: const Color.fromARGB(94, 0, 0, 0),
            appBar: AppBar(
              iconTheme: const IconThemeData(
                color: Colors.white, //색변경
              ),
              backgroundColor: const Color.fromARGB(0, 0, 0, 0),
              title: Text(
                "$title",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
            body: Column(
              children: [],
            ),
          )),
    );
  }
}
