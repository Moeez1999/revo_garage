import 'package:revogarage/utils/app_libraries.dart';

class ExtendAuctionTimeController extends GetxController {
  bool isLoading = true;

  @override
  void onReady() async {
    isLoading = false;
    update();
    super.onReady();
  }
}
