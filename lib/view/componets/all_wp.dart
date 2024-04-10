import 'package:flutter/material.dart';
import 'package:wallpaper_app/utills/route_utills.dart';

Widget wallpaper({required Map e, required BuildContext context}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(
        MyRoutes.detailPage,
        arguments: e,
      );
    },
    child: Container(
      margin: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: const [
            BoxShadow(offset: Offset(3, 3), blurRadius: 2, color: Colors.grey)
          ],
          image: DecorationImage(
            image: NetworkImage(e['previewURL']),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}
