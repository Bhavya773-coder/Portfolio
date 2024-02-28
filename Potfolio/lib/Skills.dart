import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  get controller => null;

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM2zteJ7GzeQfhnCaghjQ_fpp1mwLm1m8WBw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNjZkUK2wsbfmFk6Yh0YfhaeB5wp46vO1FtA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3S8nOwvQAafiCcPdEzW79BpxhxqWHZw6sVQ&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZH_NLBqJZYLeAzwyyn-teWb7x6VZ5lTmGRQ&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZl4h438joH3zgf8UGVNtmSclY3sDd52WQCA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxqD3dojNFiUlEyz_-MFaf9FSvMNKQ1yN-VQ&usqp=CAU"
    ];
    List<String> items = ["JavaScript", "Game Development","Python"];
    List<String> images = [
      "https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png",
      "https://p1.hiclipart.com/preview/249/507/610/free-120-apps-and-website-polygon-icons-unity-png-clipart.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEPp-ZA7rf1xwSEG3Br50sxOL0UyozaLVvKQ&usqp=CAU"    ];
    return Scaffold(
      body: SafeArea(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    alignment: Alignment.topLeft,
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/');
                    },
                    icon: const Icon(Icons.arrow_back)),
                const Text("My Skills",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
              ],
            ),
            GFCarousel(
              pagerSize: 500,
              height: 300,
              items: imageList.map(
                (url) {
                  return Container(
                    margin: const EdgeInsets.only(top: 20, left: 8, right: 8),
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(7.0)),
                      child:
                          Image.network(url, fit: BoxFit.cover, width: 1000.0),
                    ),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
            ),

            Expanded(
              child: ClipRRect(borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                child: skilldesign(items, images),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container skilldesign(List<String> items, List<String> images) {
    return Container(
                  color: Colors.black12,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(25),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.circular(20)),
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.all(20),
                          padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                           Image.network(images[index],height: 50,),
                            const SizedBox(width: 20,),
                            Text(items[index])
                          ],
                        ));

                    },
                  ));
  }

  Future<void> setState(Null Function() param0) async {}
}
