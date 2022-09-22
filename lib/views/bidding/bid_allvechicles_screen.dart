import 'package:revogarage/utils/app_libraries.dart';

class BidAllVechiclesScreen extends StatelessWidget {
  const BidAllVechiclesScreen({Key? key}) : super(key: key);

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

  // << --------------------- Main body of the screen -------------------- >>

  Widget bodyData(BuildContext context) {
    return GetBuilder<BidAllVechiclesController>(
        init: BidAllVechiclesController(),
        builder: (_) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonTextFormField(
                controller: _.searchVechicle,
                hintText: AppTexts.searchCars,
                lines: 1,
              ).marginSymmetric(horizontal: 16),
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
                                                      AppImage.euro))),
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
                                                    AssetImage(AppImage.euro))),
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
                                  const SizedBox(
                                    width: 40,
                                  ),
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
                                                    AppImage.hammer))),
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
                          ))).marginOnly(left: 21, right: 16)),
            ],
          );
        });
  }
}
