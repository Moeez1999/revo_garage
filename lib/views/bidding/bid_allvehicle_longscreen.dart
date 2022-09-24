import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:revogarage/constants/text_style.dart';
import 'package:revogarage/controllers/bidding/allvehicle_long_controller.dart';
import 'package:revogarage/utils/app_libraries.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../widgets/common_row.dart';

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
    return GetBuilder<AllVehicleLongController>(
        init: AllVehicleLongController(),
        builder: (_) {
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
                    items: [AppImage.car, AppImage.vehicleInfo, AppImage.car]
                        .map((i) {
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
                      Image.asset(AppImage.elipse)
                          .marginOnly(left: 15, right: 8),
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0xff9c9c9c),
                      ),
                    ),
                    child: Column(
                      children: [
                        CommonRow(
                          heading: "Vehicles Type",
                          subheading: "Used",
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Type Certification",
                          subheading: "1YM58M",
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Milage",
                          subheading: "15,580 Km",
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "1 Put into Market",
                          subheading: "3 April, 2022",
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Transmission",
                          subheading: "Automate",
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "MFK",
                          isRadioBtn: Row(
                            children: [
                              RadioListTile(
                                title: Text("Male"),
                                value: "male",
                                groupValue: _.btn1,
                                onChanged: (value) {
                                  _.btn1 = value.toString();
                                  _.update();
                                },
                              ),
                            ],
                          ),
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Break front",
                          isRadioBtn: Row(
                            children: [
                              RadioListTile(
                                title: Text("Male"),
                                value: "male",
                                groupValue: _.btn1,
                                onChanged: (value) {
                                  _.btn1 = value.toString();
                                  _.update();
                                },
                              ),
                            ],
                          ),
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Brakes rear",
                          isRadioBtn: Row(
                            children: [
                              RadioListTile(
                                title: Text("Male"),
                                value: "male",
                                groupValue: _.btn1,
                                onChanged: (value) {
                                  _.btn1 = value.toString();
                                  _.update();
                                },
                              ),
                            ],
                          ),
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Engine oil leak",
                          isRadioBtn: Row(
                            children: [
                              RadioListTile(
                                title: Text("Male"),
                                value: "male",
                                groupValue: _.btn1,
                                onChanged: (value) {
                                  _.btn1 = value.toString();
                                  _.update();
                                },
                              ),
                            ],
                          ),
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Transmission oil leak",
                          isRadioBtn: Row(
                            children: [
                              RadioListTile(
                                title: Text("Male"),
                                value: "male",
                                groupValue: _.btn1,
                                onChanged: (value) {
                                  _.btn1 = value.toString();
                                  _.update();
                                },
                              ),
                            ],
                          ),
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Control-light",
                          isRadioBtn: Row(
                            children: [
                              RadioListTile(
                                title: Text("Male"),
                                value: "male",
                                groupValue: _.btn1,
                                onChanged: (value) {
                                  _.btn1 = value.toString();
                                  _.update();
                                },
                              ),
                            ],
                          ),
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Transmission type",
                          isRadioBtn: Row(
                            children: [
                              RadioListTile(
                                title: Text("Male"),
                                value: "male",
                                groupValue: _.btn1,
                                onChanged: (value) {
                                  _.btn1 = value.toString();
                                  _.update();
                                },
                              ),
                            ],
                          ),
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "vehicle divable",
                          isRadioBtn: Row(
                            children: [
                              RadioListTile(
                                title: Text("Male"),
                                value: "male",
                                groupValue: _.btn1,
                                onChanged: (value) {
                                  _.btn1 = value.toString();
                                  _.update();
                                },
                              ),
                            ],
                          ),
                        ).marginAll(10),
                      ],
                    ),
                  ).marginOnly(top: 15),
                  Text(
                    "Tires",
                    style: Style.Style3,
                  ).marginOnly(top: 32),
                  Text(
                    "Summer Tires",
                    style: Style.Style3,
                  ).marginOnly(top: 16),
                  Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0xff9c9c9c),
                      ),
                    ),
                    child: Column(
                      children: [
                        CommonRow(
                          heading: "Tyre Type",
                          subheading: "Summer",
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Brand",
                          subheading: "Continental",
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Dimension",
                          subheading: "245/ 45 R 17",
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Prifile",
                          subheading: "v: 4.5 mm / h: 4.5 mm",
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Rim type",
                          subheading: "Aluminium",
                        ).marginAll(10),
                      ],
                    ),
                  ),
                  Text(
                    "Winter Tires",
                    style: Style.Style3,
                  ).marginOnly(top: 16, bottom: 16),
                  Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0xff9c9c9c),
                      ),
                    ),
                    child: Column(
                      children: [
                        CommonRow(
                          heading: "Tyre Type",
                          subheading: "Winter",
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Brand",
                          subheading: "Continental",
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Dimension",
                          subheading: "245/ 45 R 17",
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Prifile",
                          subheading: "v: 4.5 mm / h: 4.5 mm",
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        CommonRow(
                          heading: "Rim type",
                          subheading: "Without",
                        ).marginAll(10),
                      ],
                    ),
                  ),
                  //-------------------Vehicle condition section
                  Text(
                    "Vehicle Condition",
                    style: Style.Style3,
                  ).marginOnly(top: 16, bottom: 16),
                  Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0xff9c9c9c),
                      ),
                    ),
                    child: Column(
                      children: [
                        CommonRow(
                          heading: "Interior condition",
                          subheading: "Modarate",
                        ).marginAll(10),
                        Divider(
                          thickness: 2,
                          color: Color(0xff9c9c9c),
                        ),
                        Center(
                          child: Image.asset(AppImage.carBody),
                        ),
                        Center(
                          child:
                              Image.asset(AppImage.carInspection).marginAll(20),
                        ),
                      ],
                    ),
                  ),
                  //-------------------Damage car Section-----------

                  Text(
                    "Damage",
                    style: Style.Style3,
                  ).marginOnly(top: 16, bottom: 16),

                  Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0xff9c9c9c),
                      ),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Image.asset(AppImage.carBody).marginAll(10),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0xff9c9c9c),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(AppImage.clock)
                                .marginOnly(left: 10, top: 20),
                            Text("12:30:00").marginOnly(top: 20, left: 10),
                            Spacer(),
                            Image.asset(AppImage.euro)
                                .marginOnly(left: 10, top: 20),
                            Text("CHF 12,400")
                                .marginOnly(top: 20, left: 10, right: 20)
                          ],
                        ),
                        CircularButtons(
                          color: Color(0xff006091),
                          height: 50,
                          width: Get.width,
                          text: "Bid",
                          onPressed: () {},
                        ).marginAll(15)
                      ],
                    ),
                  ).marginOnly(top: 20),
                ],
              ).marginOnly(left: 16, right: 16),
            ),
          );
        });
  }
}
