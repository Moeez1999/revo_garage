


import 'package:revogarage/utils/app_libraries.dart';
import 'package:revogarage/views/bidding/bid_extendtime_screen.dart';

class AppPages {
  static const initial = Routes.extendAuctionTimeRoutes;
  // static const initial1 = Routes.dashBoardRoute;

  static final routes = [
    // < -------------------- Bidding HomePage ----------------->

    GetPage(
      name: Routes.biddingHomePageRoutes,
      page: () => const BidHomePageScreen(),
    ),

    // < -------------------- Bidding All Vechciles ----------------->

    GetPage(
      name: Routes.biddingAllVechiclesRoutes,
      page: () => const BidAllVechiclesScreen(),
    ),

    // < -------------------- Bidding All Vechciles One ----------------->

    GetPage(
      name: Routes.biddingAllVechiclesOneRoutes,
      page: () => const BidAllVechiclesScreenOne(),
    ),


     // < -------------------- Extend Auction time ----------------->

    GetPage(
      name: Routes.extendAuctionTimeRoutes,
      page: () => const BidExtendAuctionTimeScreen(),
    ),

   
  ];
}
