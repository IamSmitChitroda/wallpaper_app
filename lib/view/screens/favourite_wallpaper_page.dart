import 'package:flutter/material.dart';
import 'package:wallpaper_app/utills/all_wallpaper_utills.dart';

class MyFavuriteWallpaper extends StatefulWidget {
  const MyFavuriteWallpaper({super.key});

  @override
  State<MyFavuriteWallpaper> createState() => _MyFavuriteWallpaperState();
}

class _MyFavuriteWallpaperState extends State<MyFavuriteWallpaper> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Favourite Wallpaper",
          style: TextStyle(
            color: Color(0xffDDE6ED),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_sharp),
          color: const Color(0xffDDE6ED),
        ),
        backgroundColor: const Color(0xff27374D),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...favWallpaper.map(
                  (e) => Container(
                    height: h * 0.4,
                    width: double.infinity,
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 16,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(3, 3),
                                  blurRadius: 5,
                                  color: Colors.grey,
                                ),
                              ],
                              image: DecorationImage(
                                  image: NetworkImage(e['previewURL']),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(3, 3),
                                  blurRadius: 5,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      const TextSpan(
                                        text: "Tags :- ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      TextSpan(
                                        // text: e['tag'],
                                        text: e['tags'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    favWallpaper.remove(e);
                                    setState(() {});
                                  },
                                  child: Text("Remove"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xff526D82),
    );
  }
}
