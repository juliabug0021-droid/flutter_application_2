import 'package:flutter_lab/lesson_22/error_handling_homework/data/repository/entity/user_entity.dart';

class FakeUserRepository {
  Future<UserEntity> getUserProfile(bool shouldFail) async {
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      if (shouldFail) {
        throw Exception('Server is temporarily unavailable');
      }
    } on Exception {
      throw const CustomServerError();
    }
    return UserEntity(id: '1', name: 'Test User');
  }
}

class CustomServerError implements Exception {
  const CustomServerError();

  @override
  String toString() {
    return 'Server is temporarily unavailable';
  }
}
