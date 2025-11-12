part of 'movie_bloc.dart';

@immutable
sealed class MovieState extends Equatable {
  // بحط هنا المتغيرات
  final List<Movie> nowPlayingMovies;
  final RequestStatus nowPlayingState;
  final String massage;

  const MovieState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestStatus.loading,
    this.massage = '',
  });

  @override
  List<Object> get props => [nowPlayingMovies, nowPlayingState, massage];
}

final class MovieInitial extends MovieState {}

final class MovieLoading extends MovieState {}
