import '../utils/app_libraries.dart';

class CommonRow extends StatelessWidget {
  const CommonRow(
      {Key? key,
      this.heading,
      this.subheading,
      this.isWidget = false,
      this.isRadioBtn})
      : super(key: key);

  final String? heading;
  final String? subheading;
  final bool isWidget;
  final Widget? isRadioBtn;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("$heading"),
        const Spacer(),
        isWidget ? isRadioBtn! : Text("$subheading"),
      ],
    );
  }
}
