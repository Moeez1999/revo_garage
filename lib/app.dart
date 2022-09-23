// ignore_for_file: use_key_in_widget_constructors

import 'package:revogarage/utils/app_libraries.dart';
import 'package:revogarage/views/bidding/bid_filterscreen.dart';

class MyApp extends StatelessWidget {
  final storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(storage.hasData("AccessToken"));
    }
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.chipColor,
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Get.defaultTransition,
      showPerformanceOverlay: false,
      enableLog: true,
      supportedLocales: const [Locale("en", "US")],
      // initialRoute: AppPages.initial,
      // getPages: AppPages.routes,
      home: BidFilterScreen(),
    );
  }
}
