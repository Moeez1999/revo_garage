import 'package:revogarage/utils/app_libraries.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: AppColors.whiteColor,
        statusBarIconBrightness: Brightness.light),
  );
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  await GetStorage.init();
}
