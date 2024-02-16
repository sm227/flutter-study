// 데이터 형식
// {"adult":false,"backdrop_path":"/pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg","genre_ids":[878,28,18],"id":933131,"original_language":"ko","original_title":"황야","overview":"After a deadly earthquake turns Seoul into a lawless badland, a fearless huntsman springs into action to rescue a teenager abducted by a mad doctor.","popularity":1907.07,"poster_path":"/zVMyvNowgbsBAL6O6esWfRpAcOb.jpg","release_date":"2024-01-26","title":"Badland Hunters","video":false,"vote_average":6.726,"vote_count":382}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled/assign/movieApp/models/movie_model.dart';

class ApiService {
  static const String baseUrl = "https://movies-api.nomadcoders.workers.dev";
  static const String popular = "popular";
  static const String now = "/now-playing";

// static Future<List<MovieModel>>
  Future<List<MovieModel>> getPopularMovies() async {
    List<MovieModel> movieInstances = [];
    final url = Uri.parse('$baseUrl/$popular');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // final movies = jsonDecode(response.body)['results'];
      // print(movies);
      // return;

      final List<dynamic> movies = jsonDecode(response.body)['results'];
      for (var movie in movies) {
        final instance = MovieModel.fromJson(movie);
        movieInstances.add(instance);
      }
      // print(MovieModel.id);
      print(movieInstances);
      return movieInstances;
    }
    throw Error();
  }
}
