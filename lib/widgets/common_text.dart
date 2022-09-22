import 'package:revogarage/utils/app_libraries.dart';

class MyText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final FontWeight? fontWeight;
  final Color? color;
  final bool upperCase;
  final double letterSpacing;
  final TextDecoration? decoration;

  const MyText(
    this.text, {
    this.upperCase = false,
    this.fontSize,
    this.textAlign,
    this.maxLines,
    this.color,
    this.style,
    this.fontWeight,
    this.letterSpacing = 0,
    this.decoration,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      upperCase ? text.toUpperCase() : text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: GoogleFonts.inter(
          letterSpacing: letterSpacing,
          fontSize: fontSize ?? fontSize,
          color: color ?? color,
          decoration: decoration,
          fontWeight: fontWeight ?? fontWeight),
    );
  }
}
