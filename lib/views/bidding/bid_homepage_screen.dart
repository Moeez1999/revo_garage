import '../../utils/app_libraries.dart';

class BidHomePageScreen extends StatelessWidget {
  const BidHomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CommonScaffold(
        backGroundColors: AppColors.backgroundColor,
        bodyData: bodyData(context),
      ),
    );
  }

  // << -------------------------- Main Body of the file ---------------------- >>

  Widget bodyData(BuildContext context) {
    return GetBuilder<BiddingHomePageController>(
        init: BiddingHomePageController(),
        builder: (_) {
          return Column(
            children: [
              Image.asset(AppImage.appLogo).marginOnly(top: 40),
              const MyText(
                AppTexts.welcomeMessage,
                fontSize: 24,
                color: AppColors.textColor,
                fontWeight: FontWeight.w700,
              ).marginOnly(top: 159, bottom: 8),
              MyText(
                AppTexts.whatYouWant,
                color: const Color(0xff000000).withOpacity(0.6),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              commonMenuField(
                      context, AppTexts.auction, () {}, AppImage.auction)
                  .marginOnly(top: 40, bottom: 20),
              commonMenuField(
                  context, AppTexts.myVehicle, () {}, AppImage.sorting)
            ],
          ).marginOnly(top: 15);
        });
  }

  // << ----------------------------- Common Menu Filed ------------------------- >>

  Widget commonMenuField(
      BuildContext context, String title, VoidCallback onPressed, String icon) {
    return Container(
      height: 70,
      width: Get.width,
      decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(100))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: AppColors.commonColor.withOpacity(0.1),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                  icon,
                ))),
          ),
          const SizedBox(
            width: 23,
          ),
          MyText(
            title,
            color: AppColors.textColor1,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          const Spacer(),
          InkWell(onTap: onPressed, child: AppIcons.forwardButton)
        ],
      ).marginOnly(left: 11, right: 33),
    ).marginSymmetric(horizontal: 16);
  }
}
