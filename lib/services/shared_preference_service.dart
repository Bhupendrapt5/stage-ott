import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferenceServiceProvider = Provider<SharedPreferenceService>(
  (ref) => throw UnimplementedError(),
);

class SharedPreferenceService {
  SharedPreferenceService(this.sharedPreference);

  final SharedPreferences sharedPreference;
}

