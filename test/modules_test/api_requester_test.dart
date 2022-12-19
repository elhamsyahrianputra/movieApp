import 'package:get/get.dart';
import 'package:movielab/constants/types.dart';
import 'package:movielab/pages/main/home/home_data_controller.dart';
import 'package:test/test.dart';
import 'package:movielab/modules/api/api_requester.dart';

void main() {
  test('getTrendingMovies', () async {
    APIRequester apiRequester = APIRequester();
    Get.put(HomeDataController());

    var result = await apiRequester.getTrendingMovies();
    expect(result, isNotNull);
    if (result == RequestResult.SUCCESS) {
      expect(Get.find<HomeDataController>().trendingMovies, isNotEmpty);
    }
  });

test('getTopMovies', () async {
    APIRequester apiRequester = APIRequester();
    Get.put(HomeDataController());

    var result = await apiRequester.getTopMovies();
    expect(result, isNotNull);
    if (result == RequestResult.SUCCESS) {
      expect(Get.find<HomeDataController>().topMovies, isNotEmpty);
    }
  });

  test('getNewReleaseMovies', () async {
    APIRequester apiRequester = APIRequester();
    Get.put(HomeDataController());

    var result = await apiRequester.getNewReleaseMovies();
    expect(result, isNotNull);
    if (result == RequestResult.SUCCESS) {
      expect(Get.find<HomeDataController>().newreleaseMovies, isNotEmpty);
    }
  });

  test('getComingSoonMovies', () async {
    APIRequester apiRequester = APIRequester();
    Get.put(HomeDataController());

    var result = await apiRequester.getComingSoonMovies();
    expect(result, isNotNull);
    if (result == RequestResult.SUCCESS) {
      expect(Get.find<HomeDataController>().comingsoonMovies, isNotEmpty);
    }
  });
  test('getTrendingTVShows', () async {
    APIRequester apiRequester = APIRequester();
    Get.put(HomeDataController());

    var result = await apiRequester.getTrendingTVShows();
    expect(result, isNotNull);
    if (result == RequestResult.SUCCESS) {
      expect(Get.find<HomeDataController>().trendingShows, isNotEmpty);
    }
  });
}
