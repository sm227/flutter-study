class MovieModel {
  final int id;
  final String title;
  final String posterPath;
  final String overView;

  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['original_title'],
        overView = json['overview'],
        posterPath = "https://image.tmdb.org/t/p/w500${json['poster_path']}";
}
