import 'package:flutter/material.dart';
import 'package:wallpaper_app/utills/route_utills.dart';

Widget allHpWallpaper(
    {required double h, required Map e, required BuildContext context}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(
        MyRoutes.detailPage,
        arguments: e,
      );
    },
    child: Container(
      height: h * 0.4,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          //Images
          Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(3, 3), blurRadius: 2, color: Colors.grey)
                  ],
                  image: DecorationImage(
                    image: NetworkImage(e['previewURL']),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          //Detail
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                // color: Color(0xffA87C7C),
                color: Color(0xff9DB2BF),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(3, 3), blurRadius: 2, color: Colors.grey)
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                //Tags
                children: [
                  Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text: "Tags :- ",
                          style: TextStyle(
                            color: Color(0xffDDE6ED),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          // text: e['tag'],
                          text: e['tags'],
                          style: const TextStyle(
                              color: Color(0xffDDE6ED),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
