import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';

import '../../../core/error/failure.dart';

abstract class BaseMoviesRepository {
  // بعمل فيها الميثود
  Future<Either<Failure, List<Movie>>>  getNowPlaying(); //=> بتبقي بتتعرف في ال ui
  Future<Either<Failure, List<Movie>>>  getPopularMovies();

  Future<Either<Failure, List<Movie>>>  getTopRatedMovies();
}
