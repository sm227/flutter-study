import 'package:flutter/material.dart';
import 'package:untitled/assign/movieApp/services/api_services.dart';

class DetailScreen extends StatelessWidget {
  final int id;
  final String title, posterPath;
  final vote;
  final index;
  final String overView;
  late final int vote1 = vote.toInt();

  DetailScreen({
    super.key,
    required this.id,
    required this.title,
    required this.posterPath,
    this.index,
    required this.overView,
    required this.vote,
  });

  @override
  Widget build(BuildContext context) {
    final test = ApiService().getDetailMovies(id);
    // print("ss" + test.);
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
                    height: 230,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: TextStyle(
                          height: 1.1,
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 4),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      children: [
                        vote1 >= 2
                            ? Icon(
                                Icons.star,
                                color: Colors.yellow.shade400,
                              )
                            : Icon(
                                Icons.star,
                                color: Color.fromRGBO(167, 150, 150, 0.566),
                              ),
                        vote1 >= 4
                            ? Icon(
                                Icons.star,
                                color: Colors.yellow.shade400,
                              )
                            : Icon(
                                Icons.star,
                                color: Color.fromRGBO(167, 150, 150, 0.566),
                              ),
                        vote1 >= 6
                            ? Icon(
                                Icons.star,
                                color: Colors.yellow.shade400,
                              )
                            : Icon(
                                Icons.star,
                                color: Color.fromRGBO(167, 150, 150, 0.566),
                              ),
                        vote1 >= 8
                            ? Icon(
                                Icons.star,
                                color: Colors.yellow.shade400,
                              )
                            : Icon(
                                Icons.star,
                                color: Color.fromRGBO(167, 150, 150, 0.566),
                              ),
                        vote1 >= 10
                            ? Icon(
                                Icons.star,
                                color: Colors.yellow.shade400,
                              )
                            : Icon(
                                Icons.star,
                                color: Color.fromRGBO(167, 150, 150, 0.566),
                              ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    height: 50,
                    child: FutureBuilder(
                      future: test,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.separated(
                              scrollDirection: Axis.horizontal,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                var temp = snapshot.data![index];
                                return Text(
                                  temp.name,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                );
                              },
                              separatorBuilder: (context, index) => const Text(
                                    ", ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ));
                        }
                        return CircularProgressIndicator();
                      },
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
                  SizedBox(
                    height: 250,
                    child: SingleChildScrollView(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        margin:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                        child: Text(
                          overView,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 30),
                    child: FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                            fixedSize: Size(250, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            backgroundColor: Colors.amber.shade500),
                        child: Text(
                          "Buy ticket",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        )),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
