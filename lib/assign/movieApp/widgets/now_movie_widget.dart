import 'package:flutter/material.dart';
import 'package:untitled/assign/movieApp/screens/detail_screen.dart';

class NowMovie extends StatelessWidget {
  final int id;
  final index = 2;
  final vote;

  // final double width, height;
  final String title, posterPath, overView;
  const NowMovie({
    super.key,
    required this.id,
    required this.title,
    required this.posterPath,
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
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topCenter,
            width: 200,
            height: 50,
            child: Text(
              title,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
