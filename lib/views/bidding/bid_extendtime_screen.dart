import 'package:revogarage/widgets/common_dropdown.dart';

import '../../utils/app_libraries.dart';

class BidExtendAuctionTimeScreen extends StatelessWidget {
  const BidExtendAuctionTimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appbarTitle: AppTexts.currentAuctions,
      showAppBar: true,
      appbarcolor: AppColors.backgroundColor,
      backGroundColors: AppColors.backgroundColor,
      bodyData: bodyData(context),
    );
  }

  // << -------------- Mian part of the screen --------------- >>

  Widget bodyData(BuildContext context) {
    return GetBuilder<ExtendAuctionTimeController>(
        init: ExtendAuctionTimeController(),
        builder: (_) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: Get.height / 3.5,
                  decoration: const BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          // << ------------- upper car detail container ------------- >>
                          Container(
                            height: Get.height / 6.0,
                            width: Get.width / 1.2,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(AppImage.car),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          // ---------------- time widget ------------------------ >>
                          Container(
                            height: 30,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      color: AppColors.commonColor
                                          .withOpacity(0.1),
                                      shape: BoxShape.circle,
                                      image: const DecorationImage(
                                          image: AssetImage(AppImage.euro))),
                                ),
                                const SizedBox(width: 7),
                                const MyText(
                                  "12:30:00",
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.textColor,
                                )
                              ],
                            ).marginOnly(left: 10),
                          ).marginOnly(left: 10, top: 10)
                        ],
                      ).marginOnly(left: 10, top: 6, bottom: 5),

                      // << ------------------ name widget ---------------- >>
                      const MyText(
                        "Mercedes-Benz AMG",
                        color: AppColors.textColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ).marginOnly(left: 10, bottom: 10),
                      // ------------------- footer widget ------------------- >>
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color:
                                        AppColors.commonColor.withOpacity(0.1),
                                    shape: BoxShape.circle,
                                    image: const DecorationImage(
                                        image: AssetImage(AppImage.euro))),
                              ),
                              const SizedBox(width: 10),
                              const MyText(
                                "CHF 12,400",
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: AppColors.textColor,
                              )
                            ],
                          ).marginOnly(left: 10),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color:
                                        AppColors.commonColor.withOpacity(0.1),
                                    shape: BoxShape.circle,
                                    image: const DecorationImage(
                                        image: AssetImage(AppImage.hammer))),
                              ),
                              const SizedBox(width: 10),
                              const MyText(
                                "5 Bids",
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: AppColors.textColor,
                              )
                            ],
                          ).marginOnly(right: 10)
                        ],
                      ),
                    ],
                  )).marginOnly(left: 21, right: 16),

              // << ------------------------ Second Widget ----------------------- >>
              const SizedBox(
                height: 22,
              ),
              const MyText(
                AppTexts.auctionTime,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ).marginOnly(left: 21, bottom: 16),
              Container(
                height: Get.height / 7.0,
                width: Get.width,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    border: Border.all(color: AppColors.textfieldColor)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const MyText(
                      "00:32:10",
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                    ),
                    InkWell(
                      onTap: () {
                        showMyDialog(context, _);
                      },
                      child: Container(
                        height: 40,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: AppColors.buttonColor)),
                        child: const Center(
                          child: MyText(
                            AppTexts.extend,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.buttonColor,
                          ),
                        ),
                      ).marginAll(10),
                    )
                  ],
                ),
              ).marginOnly(left: 16, right: 16, bottom: 16),

              // << -------------------- Third Widget Container ---------------------- >>

              Container(
                height: Get.height / 5.5,
                width: Get.width,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    border: Border.all(color: AppColors.textfieldColor)),
                child: Column(
                  children: [
                    commonCalculationRow(
                        context, _, AppTexts.insertPrice, "2000"),
                    const Divider(
                      color: AppColors.blackColor,
                      thickness: 1,
                      height: 1,
                    ),
                    commonCalculationRow(
                        context, _, AppTexts.currentPrice, "4000"),
                    const Divider(
                      color: AppColors.blackColor,
                      thickness: 1,
                      height: 1,
                    ),
                    commonCalculationRow(context, _, "Total", "6000"),
                  ],
                ),
              ).marginOnly(left: 16, right: 16, bottom: 30),

              // << ------------------ Button -------------------  >>
              CircularButtons(
                      text: "Close Deal",
                      onPressed: () {},
                      color: AppColors.buttonColor,
                      height: 35,
                      width: Get.width)
                  .marginSymmetric(horizontal: 17)
            ],
          );
        });
  }

  Widget commonCalculationRow(BuildContext context,
      ExtendAuctionTimeController _, String title, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(title,
            fontSize: 15,
            fontWeight: title == "Total" ? FontWeight.w600 : FontWeight.w400,
            color: AppColors.textColor),
        MyText("$price CHF",
            fontSize: 15,
            fontWeight: title == "Total" ? FontWeight.w600 : FontWeight.w400,
            color: AppColors.textColor)
      ],
    ).marginSymmetric(vertical: 12, horizontal: 10);
  }

  Future<void> showMyDialog(context, ExtendAuctionTimeController _) async {
    return showMaterialModalBottomSheet(
      backgroundColor: AppColors.whiteColor,
      context: context,
      builder: (context) => SingleChildScrollView(
        controller: ModalScrollController.of(context),
        child: SizedBox(
          height: Get.height / 1.7,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.buttonColor),
                    child: const Icon(
                      Icons.close,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
              const MyText(
                AppTexts.extendTime,
                color: AppColors.buttonColor,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ).marginOnly(top: 52, bottom: 16),
              const MyText(
                AppTexts.extendMessage,
                color: AppColors.blackColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ).marginOnly(bottom: 43),
              // << ------------------- Select days and time widget ---------------------- >>
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MyText(
                        "Days",
                        color: AppColors.textfieldLabelColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ).marginOnly(bottom: 8, left: 15),
                      SizedBox(
                        width: Get.width / 2.5,
                        height: 50,
                        child: CommonDropDownField(
                          hinttext: "Day",
                          bordercolor: AppColors.textfieldColor,
                          controller: _.days,
                          placeholder: "Select Days",
                          values: _.dropDownList,
                          checkedvalue: _.days,
                          screenController: _,
                          fillcolor: AppColors.transparentColor,
                        ),
                      ).marginOnly(left: 10.0)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MyText(
                        "Minutes",
                        color: AppColors.textfieldLabelColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ).marginOnly(bottom: 8, left: 15),
                      SizedBox(
                        width: Get.width / 2.5,
                        height: 50,
                        child: CommonDropDownField(
                          hinttext: "Minutes",
                          bordercolor: AppColors.textfieldColor,
                          controller: _.minutes,
                          placeholder: "Select Minutes",
                          values: _.minutesList,
                          checkedvalue: _.minutes,
                          screenController: _,
                          fillcolor: AppColors.transparentColor,
                        ),
                      ).marginOnly(
                        left: 10.0,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              // << ------------------ Button -------------------  >>
              CircularButtons(
                      text: "Extend Auction Time",
                      onPressed: () {},
                      color: AppColors.buttonColor,
                      height: 40,
                      width: Get.width)
                  .marginSymmetric(
                horizontal: 17,
              )
            ],
          ).marginOnly(top: 16, left: 16, right: 16, bottom: 30),
        ),
      ),
    );
  }
}
