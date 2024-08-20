import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:weather_app_ui/utils/colors.dart';
import 'package:weather_app_ui/widgets/todayinfo.dart';
import 'package:weather_app_ui/widgets/weatherinfo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String CurrenIndex = "Today";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_outlined),
        centerTitle: true,
        title: Text(
          "Weather Forecast",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TodayInfo(),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () => setState(() {
                    CurrenIndex = "Today";
                  }),
                  child: Text(
                    "Today",
                    style: TextStyle(
                      color: CurrenIndex == "Today"
                          ? AppColor.PrimeryColor
                          : Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    CurrenIndex = "Tomorrow";
                  }),
                  child: Text(
                    "Tomorrow",
                    style: TextStyle(
                      color: CurrenIndex == "Tomorrow"
                          ? AppColor.PrimeryColor
                          : Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    CurrenIndex = "Next 7 days";
                  }),
                  child: Text(
                    "Next 7 days",
                    style: TextStyle(
                      color: CurrenIndex == "Next 7 days"
                          ? AppColor.PrimeryColor
                          : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                primary: false,
                shrinkWrap: true,
                children: [
                  weatherInfo("assets/images/cloud-zap.png", "10 Am", "26"),
                  weatherInfo("assets/images/cloud-rain.png", "11 Am", "20"),
                  weatherInfo("assets/images/cloud-sun.png", "12 Am", "32"),
                  weatherInfo("assets/images/cloud-rain-sun.png", "1 Am", "30")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
