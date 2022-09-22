import 'package:revogarage/utils/app_libraries.dart';
import 'package:revogarage/widgets/common_button.dart';

class BidAllVechiclesScreenOne extends StatelessWidget {
  const BidAllVechiclesScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showFAB: true,
      floatingIcon: Icons.abc,
      appbarTitle: AppTexts.currentAuctions,
      showAppBar: true,
      appbarcolor: AppColors.backgroundColor,
      backGroundColors: AppColors.backgroundColor,
      bodyData: bodyData(context),
    );
  }

  // << --------------------- Main body of the screen -------------------- >>

  Widget bodyData(BuildContext context) {
    return GetBuilder<BidAllVechiclesOneController>(
        init: BidAllVechiclesOneController(),
        builder: (_) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // << ------------------ Custom Tab Bar ------------------------ >>
              Container(
                height: 50,
                width: Get.width,
                color: AppColors.whiteColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        const MyText(
                          AppTexts.allAuction,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor,
                        ),
                        const Spacer(),
                        Container(
                          height: 5,
                          width: Get.width / 2.0,
                          color: AppColors.buttonColor,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        const MyText(
                          AppTexts.myAuction,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor,
                        ),
                        const Spacer(),
                        Container(
                          height: 5,
                          width: Get.width / 2.0,
                          color: AppColors.whiteColor,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const MyText(
                AppTexts.vechiles,
                color: AppColors.textColor,
                fontWeight: FontWeight.w600,
              ).marginOnly(top: 22, bottom: 16, left: 21, right: 16),
              Expanded(
                  child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 16,
                          ),
                      itemCount: 20,
                      itemBuilder: (context, index) => Container(
                          height: Get.height / 3.5,
                          decoration: const BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  // << ------------- main container ------------- >>
                                  Container(
                                    height: Get.height / 6.0,
                                    width: Get.width / 1.2,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(AppImage.car),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                  ),
                                  // ---------------- time widget ------------------------ >>
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: const BoxDecoration(
                                        color: AppColors.whiteColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
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
                                                  image: AssetImage(
                                                      AppImage.clock))),
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const MyText(
                                    "Mercedes-Benz AMG",
                                    color: AppColors.textColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const MyText(
                                    "15,320 CHF",
                                    color: AppColors.buttonColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ).marginOnly(top: 3)
                                ],
                              ).marginOnly(left: 10, bottom: 10, right: 10),
                              // ------------------- footer widget ------------------- >>
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: AppColors.commonColor
                                                .withOpacity(0.1),
                                            shape: BoxShape.circle,
                                            image: const DecorationImage(
                                                image:
                                                    AssetImage(AppImage.kms))),
                                      ),
                                      const SizedBox(width: 5),
                                      const MyText(
                                        "12,400 Kms",
                                        fontSize: 10,
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
                                            color: AppColors.commonColor
                                                .withOpacity(0.1),
                                            shape: BoxShape.circle,
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    AppImage.calendar))),
                                      ),
                                      const SizedBox(width: 5),
                                      const MyText(
                                        "3 Arp, 2012",
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.textColor,
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CircularButtons(
                                          text: "Bid",
                                          onPressed: () {},
                                          color: AppColors.buttonColor,
                                          height: 35,
                                          width: 80)
                                    ],
                                  ).marginOnly(right: 5)
                                ],
                              ),
                            ],
                          ))).marginOnly(left: 21, right: 16)),
            ],
          );
        });
  }
}
