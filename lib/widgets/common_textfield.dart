// ignore_for_file: use_key_in_widget_constructors

import 'package:revogarage/utils/app_libraries.dart';

// < ------------------ AppBar textfield -------------------- >
class CommonTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final bool? obsecure;
  final TextInputType? type;
  final int? lines;
  final VoidCallback? onPressed;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final void Function(String)? onFieldSubmitted;
  final bool readOnly;
  final Widget? suffixIcon;
  const CommonTextFormField(
      {this.controller,
      this.hintText,
      this.labelText,
      this.obsecure,
      this.type,
      this.lines,
      this.onPressed,
      this.onChanged,
      this.onTap,
      this.readOnly = false,
      this.suffixIcon,
      this.onFieldSubmitted});

  @override
  // ignore: library_private_types_in_public_api
  _CommonTextFormFieldState createState() => _CommonTextFormFieldState();
}

class _CommonTextFormFieldState extends State<CommonTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      style: const TextStyle(color: AppColors.blackColor),
      maxLines: 1,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onTap: widget.onTap,
      readOnly: widget.readOnly,
      keyboardType: widget.type,
      onChanged: widget.onChanged,
      cursorColor: AppColors.textfieldColor,
      controller: widget.controller,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        
        // ignore: deprecated_member_use
        prefixIcon: InkWell(
          onTap: widget.onPressed,
          // ignore: deprecated_member_use
          child: const Icon(FontAwesomeIcons.search,
              size: 15, color: AppColors.greyHintColor),
        ),
        contentPadding: const EdgeInsets.only(left: 10),
        hintText: widget.hintText,
        labelText: widget.labelText,
        focusColor: AppColors.whiteColor,
        hintStyle: const TextStyle(
            color: AppColors.greyHintColor,
            fontSize: 13,
            fontWeight: FontWeight.w400),
        errorStyle: const TextStyle(color: Colors.red),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(78),
          borderSide: const BorderSide(color: AppColors.textfieldColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(78),
          borderSide: const BorderSide(color: AppColors.textfieldColor),
          gapPadding: 10,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(78),
          borderSide: const BorderSide(color: Colors.red),
          gapPadding: 10,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(78),
          borderSide: const BorderSide(color: Colors.red),
          gapPadding: 10,
        ),
      ),
    );
  }
}
