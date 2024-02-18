class MovieDetailModel {
  final int id;
  final name;

  MovieDetailModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];
}
