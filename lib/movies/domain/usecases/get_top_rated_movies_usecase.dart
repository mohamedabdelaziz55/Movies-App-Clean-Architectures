import '../entities/movie.dart';
import '../repository/base_movies_repository.dart';

class GetTopRatedMoviesUsecase {
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUsecase(this.baseMoviesRepository);

  Future<List<Movie>> execute() async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
