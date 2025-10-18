import 'package:movies_app/movies/domain/entities/movie.dart';

abstract class BaseMoviesRepository {
  // بعمل فيها الميثود
  Future<List<Movie>> getNowPlaying(); //=> بتبقي بتتعرف في ال ui
  Future<List<Movie>> getPopularMovies();

  Future<List<Movie>> getTopRatedMovies();
}
