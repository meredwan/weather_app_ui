import 'package:flutter/material.dart';
import 'package:weather_app_ui/utils/colors.dart';

class weatherInfo extends StatelessWidget {
  final String image;
  final String time;
  final String temp;
  weatherInfo(this.image, this.time, this.temp);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 120,
      decoration: BoxDecoration(
        color: AppColor.ContentColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.only(right: 10, top: 10, bottom: 15, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                image,
                width: 60,
                height: 60,
              ),
            ],
          ),
          Text(
            time,
            style:
                TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.5)),
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: "$temp",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              TextSpan(
                  text: "°C",
                  style: TextStyle(fontSize: 16, color: AppColor.PrimeryColor))
            ]),
          )
        ],
      ),
    );
  }
}
