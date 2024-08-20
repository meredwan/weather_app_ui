import 'package:flutter/material.dart';
import 'package:weather_app_ui/utils/colors.dart';
import 'package:weather_app_ui/view/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            const Spacer(),
            Image(image: AssetImage("assets/images/cloud-rain-sun.png")),
            const Spacer(
              flex: 4,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Weather ",
                    style: TextStyle(fontSize: 24, color: Colors.white)),
                TextSpan(
                    text: "News\n & Feed",
                    style:
                        TextStyle(fontSize: 24, color: AppColor.PrimeryColor))
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                  textAlign: TextAlign.center,
                  "Access current weather data for any location · We collect and process weather data from different sources such as global and local weather models",
                  style: TextStyle(color: Colors.grey)),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.PrimeryColor,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              child: Text(
                "Get Start",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
