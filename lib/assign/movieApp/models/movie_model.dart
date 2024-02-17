class MovieModel {
  final int id;
  final String title;
  final String posterPath;

  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['original_title'],
        posterPath = "https://image.tmdb.org/t/p/w500${json['poster_path']}";
}
