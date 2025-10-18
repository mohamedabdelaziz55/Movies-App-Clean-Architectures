import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../repository/base_movies_repository.dart';

class GetTopRatedMoviesUsecase {
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUsecase(this.baseMoviesRepository);

  Future<Either<Failure, List<Movie>>>  execute() async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
