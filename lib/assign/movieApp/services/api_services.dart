// 데이터 형식
// {"adult":false,"backdrop_path":"/pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg","genre_ids":[878,28,18],"id":933131,"original_language":"ko","original_title":"황야","overview":"After a deadly earthquake turns Seoul into a lawless badland, a fearless huntsman springs into action to rescue a teenager abducted by a mad doctor.","popularity":1907.07,"poster_path":"/zVMyvNowgbsBAL6O6esWfRpAcOb.jpg","release_date":"2024-01-26","title":"Badland Hunters","video":false,"vote_average":6.726,"vote_count":382}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled/assign/movieApp/models/movie_detail_model.dart';
import 'package:untitled/assign/movieApp/models/movie_model.dart';

class ApiService {
  static const String baseUrl = "https://movies-api.nomadcoders.workers.dev";
  static const String popular = "/popular";
  static const String now = "/now-playing";
  static const String soon = "/coming-soon";
  static const String detail = "/movie?id=";

// static Future<List<MovieModel>>
  Future<List<MovieModel>> getPopularMovies() async {
    List<MovieModel> movieInstances = [];
    final url = Uri.parse(baseUrl + popular);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // final movies = jsonDecode(response.body)['results'];
      // print(movies);
      // return;
      // (response.body)['results'];

      final movies = jsonDecode(utf8.decode(response.bodyBytes))['results'];
      for (var movie in movies) {
        final instance = MovieModel.fromJson(movie);
        movieInstances.add(instance);
        // print(instance.posterPath);
      }
      // print(MovieModel.id);
      print(movieInstances.length);
      return movieInstances;
    }
    throw Error();
  }

  Future<List<MovieModel>> getNowMovies() async {
    List<MovieModel> movieInstances = [];
    final url = Uri.parse(baseUrl + now);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // final movies = jsonDecode(response.body)['results'];
      // print(movies);
      // return;
      // (response.body)['results'];

      final movies = jsonDecode(utf8.decode(response.bodyBytes))['results'];
      for (var movie in movies) {
        final instance = MovieModel.fromJson(movie);
        movieInstances.add(instance);
        // print(instance.posterPath);
      }
      // print(MovieModel.id);
      // print(movieInstances[].title);
      return movieInstances;
    }
    throw Error();
  }

  Future<List<MovieModel>> getSoonMovies() async {
    List<MovieModel> movieInstances = [];
    final url = Uri.parse(baseUrl + soon);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // final movies = jsonDecode(response.body)['results'];
      // print(movies);
      // return;
      // (response.body)['results'];

      final movies = jsonDecode(utf8.decode(response.bodyBytes))['results'];
      for (var movie in movies) {
        final instance = MovieModel.fromJson(movie);
        movieInstances.add(instance);
        print(instance.vote);
      }
      // print(MovieModel.id);
      // print(movieInstances[].title);
      return movieInstances;
    }
    throw Error();
  }

  Future<List<MovieDetailModel>> getDetailMovies(int id) async {
    List<MovieDetailModel> movieInstances = [];
    final url = Uri.parse(baseUrl + detail + "$id");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // final movies = jsonDecode(response.body)['results'];
      // print(movies);
      // return;
      // (response.body)['results'];

      final movies = jsonDecode(utf8.decode(response.bodyBytes))['genres'];
      for (var movie in movies) {
        final instance = MovieDetailModel.fromJson(movie);
        movieInstances.add(instance);
        print(instance.name);
      }
      // print(MovieModel.id);
      // print(movieInstances[].title);
      return movieInstances;
    }
    throw Error();
  }
}
