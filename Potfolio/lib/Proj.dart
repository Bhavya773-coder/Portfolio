import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class ProjPage extends StatefulWidget {
  const ProjPage({super.key});

  @override
  State<ProjPage> createState() => _ProjPageState();
}

class _ProjPageState extends State<ProjPage> {
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildGfCarousel(context),
    );
  }

  GFCarousel buildGfCarousel(BuildContext context) {
    return GFCarousel(
      scrollDirection: Axis.vertical,
      initialPage: 1,
      height: MediaQuery.of(context).size.height,
      items: imageList.map(
        (url) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Image.network(url,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width),
                  ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: Container(
                          height: 200,
                          color: Colors.white30,
                          width: MediaQuery.of(context).size.width,
                          child: Text("My JavaScript project is a car selling platform designed to facilitate the buying and selling of automobiles. Users can browse through a variety of vehicles, view detailed specifications, and connect with sellers. The platform features a user-friendly interface, robust search functionality, and secure transaction capabilities, making it convenient for both buyers and sellers in the automotive market."))),
                ],
              ),
            ),
          );
        },
      ).toList(),
      onPageChanged: (index) {
        setState(() {
          index;
        });
      },
    );
  }
}
