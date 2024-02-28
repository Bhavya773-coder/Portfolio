import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM2zteJ7GzeQfhnCaghjQ_fpp1mwLm1m8WBw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNjZkUK2wsbfmFk6Yh0YfhaeB5wp46vO1FtA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3S8nOwvQAafiCcPdEzW79BpxhxqWHZw6sVQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZH_NLBqJZYLeAzwyyn-teWb7x6VZ5lTmGRQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZl4h438joH3zgf8UGVNtmSclY3sDd52WQCA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxqD3dojNFiUlEyz_-MFaf9FSvMNKQ1yN-VQ&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.install_mobile),
                    Icon(Icons.account_balance),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
                  Text(
                    "Discover,Collect,Sell",
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),

                  ),
                  Text(
                    "extraOrdinary NFT's",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),

                  ),


                ]),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 50,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 160,
                  child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white12)),onPressed: (){}, child: Text(style: TextStyle(color: Colors.white),"💎 Collectibles")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  child:  ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white12)),onPressed: (){}, child: Text(style: TextStyle(color: Colors.white)," Art")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  child:  ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white12)),onPressed: (){}, child: Text(style: TextStyle(color: Colors.white),"Music")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  child:  ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white12)),onPressed: (){}, child: Text(style: TextStyle(color: Colors.white),"Hobby")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  child:  ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white12)),onPressed: (){}, child: Text(style: TextStyle(color: Colors.white),"Games")),
                ),
                ),
          
            ],
          ),
        ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Text("Notable Drops",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    Icon(size: 25,(Icons.keyboard_arrow_right))
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
                Text(style: TextStyle(color: Colors.white54),"Trending Collections"),
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
     ],

            ),
          ],
        ),
      ),
    );
  }
}
