class MovieModel {
  final String id, title;

  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'];
}
