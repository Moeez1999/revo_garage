import 'package:revogarage/utils/app_libraries.dart';

class ExtendAuctionTimeController extends GetxController {
  bool isLoading = true;

  TextEditingController days = TextEditingController();

  TextEditingController minutes = TextEditingController();

  List dropDownList = [];

  List minutesList = [];

  int i = 0;

  @override
  void onInit() {
    // minutesList.add({"id": "Days", "name": "Days"});
    for (i = 1; i <= 150; i++) {
      minutesList.add({"id": "$i", "name": "$i"});
    }
    dropDownList = [
      {
        "id": '1',
        "name": '1',
      },
      {
        "id": '2',
        "name": '2',
      },
      {
        "id": '3',
        "name": '3',
      },
      {
        "id": '4',
        "name": '4',
      },
      {
        "id": '5',
        "name": '5',
      },
    ];
    update();
    super.onInit();
  }

  @override
  void onReady() async {
    isLoading = false;
    update();
    super.onReady();
  }
}
