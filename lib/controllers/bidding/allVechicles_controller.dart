import 'package:revogarage/utils/app_libraries.dart';

class BidAllVechiclesController extends GetxController {
  bool isLoading = true;

  TextEditingController searchVechicle = TextEditingController();

  @override
  void onReady() async {
    isLoading = false;
    update();
    super.onReady();
  }
}
