import 'package:flutter/material.dart';
import 'package:weather_app_ui/utils/colors.dart';

Container TodayInfo() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppColor.ContentColor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                "Sat,18 Aug",
                style: TextStyle(
                    fontSize: 12, color: Colors.grey.withOpacity(0.9)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: "30",
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                  TextSpan(
                    text: "°C",
                    style:
                        TextStyle(fontSize: 20, color: AppColor.PrimeryColor),
                  )
                ]),
              ),
              Image.asset(
                "assets/images/sun-storm.png",
                width: 90,
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: AppColor.PrimeryColor,
              ),
              Text(
                "Allentown, New Mexicon 31134",
                style: TextStyle(
                    fontSize: 14, color: Colors.grey.withOpacity(0.9)),
              )
            ],
          )
        ],
      ),
    ),
  );
}
