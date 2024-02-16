import 'package:flutter/material.dart';
import 'package:untitled/assign/movieApp/home_screen.dart';
import 'package:untitled/assign/movieApp/services/api_services.dart';

void main() {
  runApp(MyWidget());
  ApiService.getPopularMovies();
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
