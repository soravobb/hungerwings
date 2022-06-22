
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:zumfle/constants/constants.dart';
// import 'package:zumfle/products/menu.dart';
import 'package:zumfle/screens/onboard/more.dart';
import 'package:zumfle/screens/profile/profile.dart';

import '../products/Desserts.dart';
import '../products/LatestOffers.dart';
import '../screens/home/home.dart';
import 'bottombar_controller.dart';

// class BottomBar extends StatelessWidget {
//   BottomBar({Key? key}) : super(key: key);
//   final BottomBarController bottomBarController =
//       Get.put(BottomBarController(), permanent: false);
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: Obx(
//     () => IndexedStack(
//           index: bottomBarController.tabIndex.value,
//           children: const [
//             // Home(),
//
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.grey.shade400,
//         onPressed: () {
//           Home();
//         },
//         child: Icon(Icons.home_rounded, color: Colors.white),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//
//         color: Colors.white,
//         shape: CircularNotchedRectangle(), //shape of notch
//         notchMargin: 10,
//         //notche margin between floating button and bottom appbar
//         child: buildBottomNavigationMenu(context, bottomBarController),
//       ),
//     );
//   }
// }

// buildBottomNavigationMenu(context, bottomBarController) {
//   return Row(
//     //children inside bottom appbar
//     mainAxisSize: MainAxisSize.max,
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: <Widget>[
//       Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           IconButton(
//             icon: Icon(
//               Icons.menu, color: ThemeColor.primaryRed,
//             ),
//             onPressed: () {
//               // Get.to(() => Menu());
//             },
//           ),
//           SizedBox(width: 20.0,),
//           IconButton(
//             icon: Icon(
//               Icons.search,
//               color: ThemeColor.primaryRed,
//             ),
//             onPressed: () {
//               // Get.to(() => LatestOffers());
//
//             },
//           ),
//         ],
//       ),
//       Row(
//         children: [
//           IconButton(
//             icon: Icon(
//               Icons.print,
//               color: ThemeColor.primaryRed,
//             ),
//             onPressed: () {
//               // Get.to(() => profile());
//             },
//           ),
//           SizedBox(width: 20.0,),
//           IconButton(
//             icon: Icon(
//               Icons.people,
//               color: ThemeColor.primaryRed,
//             ),
//             onPressed: () {
//               // Get.to(() => profile());
//             },
//           ),
//         ],
//       ),
//     ],
//   );
// }
