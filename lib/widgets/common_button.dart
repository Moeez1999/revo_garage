// ignore_for_file: deprecated_member_use

import '../utils/app_libraries.dart';

class CircularButtons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double height;

  final double width;

  // ignore: use_key_in_widget_constructors
  const CircularButtons(
      {required this.text,
      required this.onPressed,
      required this.color,
      required this.height,
      required this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        color: color,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: MyText(
          text,
          fontSize: 15,
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w500,
          
        ),
      ),
    );
  }
}
