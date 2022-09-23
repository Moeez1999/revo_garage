import 'package:revogarage/controllers/bidding/filterscreen_controller.dart';
import 'package:revogarage/utils/app_libraries.dart';

class BidFilterScreen extends StatelessWidget {
  const BidFilterScreen({Key? key}) : super(key: key);

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

  // << ------------------- Main part of the screen ----------------- >>

  Widget bodyData(BuildContext context) {
    return GetBuilder<FilterscreenController>(
        init: FilterscreenController(),
        builder: (_) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                          height: 3,
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
                          fontWeight: FontWeight.w500,
                          color: AppColors.tabBarColor,
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
                AppTexts.vechiclesData,
                color: AppColors.textColor,
                fontWeight: FontWeight.w600,
              ).marginOnly(top: 22, bottom: 16, left: 21, right: 16),
              const MyText(
                AppTexts.vechiclesData,
                color: AppColors.textColor,
                fontWeight: FontWeight.w600,
              ).marginOnly(top: 22, bottom: 16, left: 21, right: 16),
              Center(
                  child: MultiSelectDropDown(
                backgroundColor: AppColors.whiteColor,
                hint: "Select Brand",
                hintFontSize: 15,
                hintColor: AppColors.textfieldColor,
                selectedOptionTextColor: AppColors.blackColor,
                selectedOptionBackgroundColor: AppColors.transparentColor,
                optionsBackgroundColor: AppColors.transparentColor,
                onOptionSelected: (List<ValueItem> selectedOptions) {},
                options: const <ValueItem>[
                  ValueItem(label: 'Option 1', value: '1'),
                  ValueItem(label: 'Option 2', value: '2'),
                  ValueItem(label: 'Option 3', value: '3'),
                  ValueItem(label: 'Option 4', value: '4'),
                  ValueItem(label: 'Option 5', value: '5'),
                  ValueItem(label: 'Option 6', value: '6'),
                ],
                selectionType: SelectionType.multi,
                chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                
                dropdownHeight: 300,
                optionTextStyle:
                    const TextStyle(fontSize: 16, color: AppColors.blackColor),
                selectedOptionIcon: const Icon(
                  Icons.check_circle,
                  color: AppColors.buttonColor,
                ),
              )).marginAll(16)
            ],
          );
        });
  }
}
