import 'package:dio/dio.dart';
import 'package:movies_app/movies/data/models/movie_model.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/network/error_message_model.dart';

class MovieRemoteDataSource {
 Future<List<MovieModel>> getNowPlayingMovies() async {
   final response =  await Dio().get(
      "https://api.themoviedb.org/3/movie/now_playing?api_key=72df5a9c5f8a1e8edaf68c5a4a5ee245&language=en-US&page=1",
    );
   if(response.statusCode==200){
    return List<MovieModel>.from((response.data["results"] as List).map((e) => MovieModel.fromJson(e)));
    }else {
     throw ServerException(message: ErrorMessageModel.fromJson(response.data));
   }
  }
}
