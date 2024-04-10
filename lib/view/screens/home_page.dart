import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:swipe_deck/swipe_deck.dart';
import 'package:wallpaper_app/utills/all_wallpaper_utills.dart';
import 'package:wallpaper_app/utills/route_utills.dart';
import 'package:wallpaper_app/view/componets/all_wp.dart';

//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.sizeOf(context);
//     double h = size.height;
//     double w = size.width;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xff27374D),
//         centerTitle: true,
//         title: const Text(
//           "All Wallpaper",
//           style: TextStyle(
//             color: Color(0xffDDE6ED),
//           ),
//         ),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 Navigator.of(context).pushNamed(MyRoutes.myFavWalPage);
//               },
//               icon: const Icon(
//                 Icons.favorite,
//                 color: Color(0xffDDE6ED),
//               ),)
//         ],
//       ),
//       backgroundColor: const Color(0xff526D82),
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: SingleChildScrollView(
//           child: Column(
//             children: allWallpapers
//                 .map((e) => allHpWallpaper(h: h, e: e, context: context))
//                 .toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine? matchEngine;
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff27374D),
        centerTitle: true,
        title: const Text(
          "All Wallpaper",
          style: TextStyle(
            color: Color(0xffDDE6ED),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.myFavWalPage);
            },
            icon: const Icon(
              Icons.favorite,
              color: Color(0xffDDE6ED),
            ),
          )
        ],
      ),
      body: Center(
        child: SwipeDeck(
          startIndex: allWallpapers.length ~/ 2,
          cardSpreadInDegrees: 1,
          widgets: allWallpapers
              .map(
                (e) => wallpaper(e: e, context: context),
              )
              .toList(),
        ),
      ),
      backgroundColor: const Color(0xff526D82),
    );
  }
}
