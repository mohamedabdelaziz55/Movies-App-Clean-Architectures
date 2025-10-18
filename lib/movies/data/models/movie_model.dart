import 'package:movies_app/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.releaseDate,
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.genreIds,
    required super.overview,
    required super.voteAverage,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      title: json['title'],
      backdropPath: json['backdrop_path'],
      genreIds: List<int>.from(json['genreIds'].map((e) => e)),
      overview: json['overview'],
      voteAverage: (json['voteAverage'] as num).toDouble(),
      releaseDate: json['releaseDate'] ?? 0.0,
    );
  }
}
