import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stage_ott_assignment/services/shared_preference_service.dart';
import 'package:stage_ott_assignment/views/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPref = await SharedPreferences.getInstance();
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferenceServiceProvider.overrideWithValue(
          SharedPreferenceService(sharedPref),
        ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 2400),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
