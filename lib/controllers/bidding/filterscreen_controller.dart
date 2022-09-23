import 'package:revogarage/utils/app_libraries.dart';

class FilterscreenController extends GetxController {
  bool isLoading = true;

  TextEditingController yearFrom = TextEditingController();

  TextEditingController yearTo = TextEditingController();

  List yearToList = [];

  List yearFromList = [];

  int i = 0;

  int j = 0;

  @override
  void onReady() async {
    isLoading = false;
    update();
    super.onReady();
  }

  @override
  void onInit() {
    // minutesList.add({"id": "Days", "name": "Days"});
    for (i = 2000; i <= 2021; i++) {
      yearFromList.add({"id": "$i", "name": "$i"});
    }

    // minutesList.add({"id": "Days", "name": "Days"});
    for (j = 2000; j <= 2022; j++) {
      yearToList.add({"id": "$j", "name": "$j"});
    }

    update();
    super.onInit();
  }
}
