import 'package:flutter/material.dart';
import 'package:wallpaper_app/utills/all_wallpaper_utills.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          data['tags'],
          style: TextStyle(color: Color(0xffDDE6ED)),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_sharp),
          color: Color(0xffDDE6ED),
        ),
        backgroundColor: const Color(0xff27374D),
      ),
      backgroundColor: const Color(0xff526D82),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(data['previewURL']),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            (!favWallpaper.contains(data))
                ? favWallpaper.add(data)
                : favWallpaper.remove(data);
          },
          icon: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          label: const Text("Add to favourite")),
    );
  }
}
