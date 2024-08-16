import 'package:dio/dio.dart';
import 'package:search_user_repository/src/models/models.dart';

class SearchUserRepository {
  final _httpClient = Dio();
  final apiUrl = 'https://api.jikan.moe/v4/users';

  Future<List<UserModels>> onSearch(String query) async {
    try {
      final res = await _httpClient.get(
        apiUrl,
        queryParameters: {
          'q': query,
        },
      );
      return (res.data['data'] as List)
          .map((json) => UserModels.fromJson(json))
          .toList();
    } catch (e) {
      print(e);
      return [];
    }
  }
}
