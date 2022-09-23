import 'package:revogarage/utils/app_libraries.dart';

class BidCompleteScreen extends StatelessWidget {
  const BidCompleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const MyText(
              AppTexts.completeMessage,
              textAlign: TextAlign.center,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.buttonColor,
            ),
            AppIcons.circleCheck.marginOnly(top: 100),
            const Spacer(),
            // << ------------------ Button -------------------  >>
            CircularButtons(
                    text: "Go to Home",
                    onPressed: () {},
                    color: AppColors.buttonColor,
                    height: 40,
                    width: Get.width)
                .marginSymmetric(horizontal: 17, vertical: 40)
          ],
        ),
      ),
    );
  }
}
