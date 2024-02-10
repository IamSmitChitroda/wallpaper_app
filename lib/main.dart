import 'package:flutter/material.dart';
import 'package:wallpaper_app/utills/route_utills.dart';
import 'package:wallpaper_app/view/screens/detail_page.dart';
import 'package:wallpaper_app/view/screens/favourite_wallpaper_page.dart';
import 'package:wallpaper_app/view/screens/home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.homePage: (context) => const HomePage(),
        MyRoutes.detailPage: (context) => const DetailPage(),
        MyRoutes.myFavWalPage: (context) => const MyFavuriteWallpaper(),
      },
    );
  }
}
