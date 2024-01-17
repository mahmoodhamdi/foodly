import 'package:dio/dio.dart';
import 'package:foodly/core/utils/api_service.dart';
import 'package:foodly/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final Dio dio = Dio(); // Create Dio instance
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  }
  // Future<Either<Failure, List<SuraModel>>> fetchSuraDetails() async {
  //   try {
  //     final response = await apiService.get(endPoint: "https://api.quran.com/api/v4/chapters");
  //     // Decode the JSON data
  //     List<Map<String, dynamic>> surahData =
  //         List<Map<String, dynamic>>.from(response['chapters']);

  //     // Create a list of SurahModel objects
  //     List<SuraModel> surahList =
  //         surahData.map((data) => SuraModel.fromJson(data)).toList();

  //     // Now surahList contains a list of SurahModel objects
  //     return Right(surahList);
  //     // Return a Failure if the response is not successful
  //   } catch (e) {
  //     if (e is DioException) {
  //       return left(ServerFailure.fromDioError(e));
  //     } else {
  //       return Left(ServerFailure(e.toString()));
  //     }
  //     // Return a Failure if an error occurs
  //   }
  // }

