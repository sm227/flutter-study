class MovieModel {
  final int id;
  final String title;

  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'];
}
