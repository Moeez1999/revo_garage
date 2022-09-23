import 'package:revogarage/controllers/bidding/filterscreen_controller.dart';
import 'package:revogarage/utils/app_libraries.dart';
import 'package:revogarage/widgets/common_dropdown.dart';

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
          return SingleChildScrollView(
            child: Column(
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
                          ),
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
                commonDropdown([
                  const ValueItem(label: 'Option 1', value: '1'),
                  const ValueItem(label: 'Option 2', value: '2'),
                  const ValueItem(label: 'Option 3', value: '3'),
                  const ValueItem(label: 'Option 4', value: '4'),
                  const ValueItem(label: 'Option 5', value: '5'),
                  const ValueItem(label: 'Option 6', value: '6'),
                ], _, "Brands", "Select Brands"),
                commonDropdown([
                  const ValueItem(label: 'Option 1', value: '1'),
                  const ValueItem(label: 'Option 2', value: '2'),
                  const ValueItem(label: 'Option 3', value: '3'),
                  const ValueItem(label: 'Option 4', value: '4'),
                  const ValueItem(label: 'Option 5', value: '5'),
                  const ValueItem(label: 'Option 6', value: '6'),
                ], _, "Model", "Select Modal"),
                customToFromDialog(_, _.yearFromList, _.yearToList, _.yearFrom,
                    _.yearTo, "Year"),
                customToFromDialog(_, _.yearFromList, _.yearToList, _.yearFrom,
                        _.yearTo, "Price")
                    .marginSymmetric(vertical: 16),
                customToFromDialog(_, _.yearFromList, _.yearToList, _.yearFrom,
                    _.yearTo, "Kms"),
                const SizedBox(
                  height: 80,
                ),
                // << ------------------ Button -------------------  >>
                CircularButtons(
                        text: "Show Vehicles",
                        onPressed: () {},
                        color: AppColors.buttonColor,
                        height: 40,
                        width: Get.width)
                    .marginSymmetric(horizontal: 17, vertical: 15)
              ],
            ),
          );
        });
  }

  // << ----------------------- Custom Multiple Dropdown ------------------ >>
  Widget commonDropdown(List<ValueItem> options, FilterscreenController _,
      String title, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(title,
                color: AppColors.textfieldLabelColor,
                fontSize: 10,
                fontWeight: FontWeight.w400)
            .marginOnly(left: 32),
        Center(
            child: MultiSelectDropDown(
          backgroundColor: AppColors.whiteColor,
          hint: hintText,
          hintFontSize: 15,
          hintColor: AppColors.textfieldColor,
          selectedOptionTextColor: AppColors.blackColor,
          selectedOptionBackgroundColor: AppColors.transparentColor,
          optionsBackgroundColor: AppColors.transparentColor,
          onOptionSelected: (List<ValueItem> selectedOptions) {},
          options: options,
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
  }

  // << --------------------------- Custom Dropdwon ------------------- >>

  Widget customToFromDialog(
    FilterscreenController _,
    List fromOptions,
    List toOptions,
    TextEditingController fromController,
    TextEditingController toController,
    String title,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(title,
                color: AppColors.textfieldLabelColor,
                fontWeight: FontWeight.w400,
                fontSize: 14)
            .marginOnly(left: 32, bottom: 16),
        Container(
          height: 50,
          width: Get.width,
          decoration: BoxDecoration(
            border: Border.all(width: 1.0),
            borderRadius: const BorderRadius.all(
                Radius.circular(20.0) //                 <--- border radius here
                ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MyText(
                "From",
                color: AppColors.tabBarColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ).marginOnly(left: 16),
              SizedBox(
                width: Get.width / 4.0,
                height: 50,
                child: CommonDropDownField(
                  hinttext: "",
                  bordercolor: AppColors.transparentColor,
                  controller: fromController,
                  placeholder: "",
                  values: fromOptions,
                  checkedvalue: fromController,
                  screenController: _,
                  fillcolor: AppColors.transparentColor,
                ),
              ).marginOnly(left: 10.0),
              const VerticalDivider(
                color: Colors.blue,
                thickness: 2,
              ),
              const MyText(
                "To",
                color: AppColors.tabBarColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ).marginOnly(left: 16),
              SizedBox(
                width: Get.width / 4.0,
                height: 50,
                child: CommonDropDownField(
                  hinttext: "",
                  bordercolor: AppColors.transparentColor,
                  controller: toController,
                  placeholder: "",
                  values: toOptions,
                  checkedvalue: toController,
                  screenController: _,
                  fillcolor: AppColors.transparentColor,
                ),
              ).marginOnly(left: 10.0, right: 10.0),
            ],
          ),
        ).marginSymmetric(horizontal: 16),
      ],
    );
  }
}
