import 'package:revogarage/utils/app_libraries.dart';

class FilterscreenController extends GetxController{
  bool isLoading=true;

  @override
  void onReady() async {
    isLoading = false;
    update();
    super.onReady();
  }

}