// import 'package:in_time/core/error/exceptions.dart';
// import 'package:in_time/time_set_feature/domain/repositories/session_repository.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class SessionSessionRepositoryImpl implements SessionRepository {
//   final SharedPreferences sharedPreferences;
//
//   SessionSessionRepositoryImpl({required this.sharedPreferences});
//
//   @override
//   Future<String?> getLastSession() {
//     try {
//       final lastSession = sharedPreferences.getString('last_opened');
//         return Future.value(lastSession);
//     } catch (err) {
//       throw NoRecordsException();
//     }
//   }
//
//   @override
//   Future<bool> saveSession(String nameSession) {
//     final savedLastSession =
//         sharedPreferences.setString('last_opened', nameSession);
//     return Future.value(savedLastSession);
//   }
// }
