// ignore: file_names
import 'package:revogarage/utils/app_libraries.dart';

class BiddingHomePageController extends GetxController {
  bool isLoading = true;

  @override
  void onReady() async {
    isLoading = false;
    update();
    super.onReady();
  }
}
