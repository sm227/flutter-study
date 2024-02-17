import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int id;
  final String title, posterPath;
  final index;
  final String overView;

  const DetailScreen({
    super.key,
    required this.id,
    required this.title,
    required this.posterPath,
    this.index,
    required this.overView,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: index + id,
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(posterPath))),
          child: Scaffold(
            backgroundColor: Color.fromARGB(158, 0, 0, 0),
            appBar: AppBar(
              iconTheme: const IconThemeData(
                color: Colors.white, //색변경
              ),
              backgroundColor: const Color.fromARGB(0, 0, 0, 0),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 4),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text(
                      "Storyline",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          letterSpacing: 2),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                    child: Text(
                      overView,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
