import 'package:flutter/material.dart';
import 'package:weather_app_ui/utils/colors.dart';
import 'package:weather_app_ui/view/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: AppColor.BackgroundColor,
            fontFamily: "Urbane",
            colorScheme: ColorScheme.dark(),
            appBarTheme: const AppBarTheme(
                backgroundColor: AppColor.BackgroundColor, elevation: 0)),
        title: 'Weather App Ui Design',
        home: SplashScreen());
  }
}
