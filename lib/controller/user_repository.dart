import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:machine_task_ui/models/user_model.dart';

class UserRepository {
  final String apiUrl = 'https://friendlytalks.in/admin/api/v1/index.php?token=c97369129e36336e71096aabf2270aba';

  Future<List<UserModel>> fetchUsers() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        List<UserModel> users = (data['data'] as List).map((user) => UserModel.fromJson(user)).toList();
        return users;
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      throw Exception('Failed to load users: $e');
    }
  }
}
