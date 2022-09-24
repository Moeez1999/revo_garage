// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors, avoid_function_literals_in_foreach_calls, curly_braces_in_flow_control_structures

import 'package:revogarage/utils/app_libraries.dart';

class CommonDropDownField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final String? hinttext;
  final Color? fillcolor;
  final Color? bordercolor;
  final List values;

  final checkedvalue;
  final String listMapName;
  final String listMapId;

  final screenController;

  final flex;
  final readOnly;
  final doCallback;

  const CommonDropDownField({
    required this.controller,
    required this.placeholder,
    required this.values,
    this.bordercolor,
    this.fillcolor,
    this.hinttext,
    this.checkedvalue,
    this.listMapName = 'name',
    this.listMapId = 'id',
    @required this.screenController,
    this.flex = 1,
    this.readOnly = false,
    this.doCallback,
  });

  @override
  Widget build(context) {
    TextEditingController terminalName = TextEditingController();
    if (readOnly) {
      values.forEach((list) {
        if (checkedvalue.text == list[listMapId])
          terminalName.text = list[listMapName];
      });
    }
    return readOnly == false
        ? SizedBox(
            width: Get.width,
            child: InputDecorator(
              baseStyle: const TextStyle(
                  fontSize: 16,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                hintText: placeholder,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                focusColor: AppColors.transparentColor,
                hoverColor: AppColors.transparentColor,
                // labelText: placeholder,
                // hintText: hinttext,
                filled: false,
                fillColor: fillcolor ?? AppColors.whiteColor,
                hintStyle: const TextStyle(
                    color: AppColors.textColor,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.0),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: bordercolor ?? AppColors.textfieldColor,
                      width: 1.0),
                  borderRadius: BorderRadius.circular(32),
                ),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                    borderSide: BorderSide(width: 1.0)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  borderSide: BorderSide(
                      color: bordercolor ?? AppColors.textfieldColor,
                      width: 32.0),
                ),
                labelStyle:
                    const TextStyle(color: Color(0xff2B2B2B), fontSize: 12.0),
                // fillColor: Colors.white,
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  borderRadius: BorderRadius.circular(5),
                  dropdownColor: AppColors.whiteColor,
                  icon: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyText(
                        hinttext!,
                        color: AppColors.textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        FontAwesomeIcons.chevronDown,
                        size: 20.0,
                        color: AppColors.buttonColor,
                      ),
                    ],
                  ),
                  style: const TextStyle(
                      fontSize: 10,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400),
                  value: checkedvalue.text != ''
                      ? checkedvalue.text
                      : values[0][listMapId].toString(),
                  isDense: true,
                  isExpanded: true,
                  items: values.map((list) {
                    return DropdownMenuItem(
                      // ignore: sort_child_properties_last
                      child: list[listMapName] != ''
                          ? MyText(
                              '${list[listMapName]}',
                              maxLines: 1,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textColor,
                            )
                          : const Text('notfound'),
                      value: list[listMapId].toString(),
                    );
                  }).toList(),
                  onChanged: (value) {
                    controller.text = value.toString();
                    if (screenController != null) {
                      screenController.update();
                    }
                    // ignore: avoid_print
                    doCallback != null ? doCallback() : print('no callback');
                  },
                ),
              ),
            ),
          )
        : CommonTextFormField(
            controller: terminalName,
            readOnly: false,
            hintText: placeholder,
          );
  }
}
