import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:revogarage/constants/text_style.dart';
import 'package:revogarage/utils/app_libraries.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AllVehicleBidLongScreen extends StatelessWidget {
  const AllVehicleBidLongScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      bodyData: bodyData(context),
      appbarTitle: AppTexts.currentAuctions,
      showAppBar: true,
      appbarcolor: AppColors.backgroundColor,
      backGroundColors: AppColors.backgroundColor,
    );
  }

  Widget bodyData(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Vehicle Photos",
              style: Style.Style1,
            ).marginOnly(top: 32),
            CarouselSlider(
              options: CarouselOptions(height: Get.height / 3.7),
              items:
                  [AppImage.car, AppImage.vehicleInfo, AppImage.car].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(AppImage.vehicleInfo)),
                      ),
                    );
                  },
                );
              }).toList(),
            ).marginOnly(top: 16),
            Text(
              "Mercedes-Benz AMG",
              style: Style.Style2,
            ).marginOnly(top: 11),
            Row(
              children: [
                Image.asset(AppImage.kms).marginAll(9),
                Text(
                  "Mercedes-Benz AMG",
                  style: TextStyle(
                    color: Color(0xff006091),
                  ),
                ),
                Image.asset(AppImage.elipse).marginOnly(left: 15, right: 8),
                Text(
                  "3 Apr, 2011",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Text(
              "Vehicle Information",
              style: Style.Style1,
            ).marginOnly(top: 32),
            Container(
              width: Get.width,
              height: Get.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Color(0xff9c9c9c),
                ),
              ),
            ).marginOnly(top: 15),
          ],
        ).marginOnly(left: 16, right: 16),
      ),
    );
  }
}
