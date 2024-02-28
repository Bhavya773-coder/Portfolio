import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_flutter/widgets/icons.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class ProfPage extends StatefulWidget {

   const ProfPage({super.key});

  @override
  State<ProfPage> createState() => _ProfPageState();
}

class _ProfPageState extends State<ProfPage> {
  IconData discord_rounded = IconData(0xf0309, fontFamily: 'MaterialIcons');
 final String username="Bhavya";

  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      body: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network("https://miro.medium.com/v2/resize:fit:1100/format:webp/1*DNN5mP3VUVQIOmRDInn8gA.jpeg")
                ,buildIconButton(context)
                , Container(margin: EdgeInsets.only(left: 135,top: 155),child: const CircleAvatar(maxRadius: 50,backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0_1pEfnHPg0dcHvOvoQ6W1S5LW4BAtHTeYw&usqp=CAU"),))
              ,

              ],
            ),
            Text("Bhavya",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(SocialIconsFlutter.twitter, size: 35,),
                Icon(discord_rounded,size: 35,),
                Icon(SocialIconsFlutter.instagram,size: 35,),
                Icon(SocialIconsFlutter.paypal,size: 35,),

              ],

            ),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                    children: [
                      Icon(Icons.laptop,),
                      Text("9.1k",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Items"),
                    ],
                ),
                Column(
                  children: [
                    Icon(CupertinoIcons.tag,),
                    Text("♦ 0.62",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Floor Price"),
                  ],
                ),
                Column(
                  children: [
                    Icon(CupertinoIcons.person_2,),
                    Text("4.11K",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Users"),
                  ],
                )
                ,Column(
                  children: [
                    Icon(Icons.home,),
                    Text(" 9.1k",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Items"),
                  ],
                )
              ],
            ),
            buildGridView(6)


          ],
        ),
      )
    );
  }

   IconButton buildIconButton(BuildContext context) {
     return IconButton(onPressed: (){
       Navigator.popAndPushNamed(context, '/');

     }, icon: const Icon(Icons.arrow_back));
   }

   SingleChildScrollView buildGridView(int counter) {
     final List<String> imageList = [
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM2zteJ7GzeQfhnCaghjQ_fpp1mwLm1m8WBw&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNjZkUK2wsbfmFk6Yh0YfhaeB5wp46vO1FtA&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3S8nOwvQAafiCcPdEzW79BpxhxqWHZw6sVQ&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZH_NLBqJZYLeAzwyyn-teWb7x6VZ5lTmGRQ&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZl4h438joH3zgf8UGVNtmSclY3sDd52WQCA&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxqD3dojNFiUlEyz_-MFaf9FSvMNKQ1yN-VQ&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM2zteJ7GzeQfhnCaghjQ_fpp1mwLm1m8WBw&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNjZkUK2wsbfmFk6Yh0YfhaeB5wp46vO1FtA&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3S8nOwvQAafiCcPdEzW79BpxhxqWHZw6sVQ&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZH_NLBqJZYLeAzwyyn-teWb7x6VZ5lTmGRQ&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZl4h438joH3zgf8UGVNtmSclY3sDd52WQCA&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxqD3dojNFiUlEyz_-MFaf9FSvMNKQ1yN-VQ&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM2zteJ7GzeQfhnCaghjQ_fpp1mwLm1m8WBw&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNjZkUK2wsbfmFk6Yh0YfhaeB5wp46vO1FtA&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3S8nOwvQAafiCcPdEzW79BpxhxqWHZw6sVQ&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZH_NLBqJZYLeAzwyyn-teWb7x6VZ5lTmGRQ&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZl4h438joH3zgf8UGVNtmSclY3sDd52WQCA&usqp=CAU",
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxqD3dojNFiUlEyz_-MFaf9FSvMNKQ1yN-VQ&usqp=CAU"


     ];
     return SingleChildScrollView(
       physics: AlwaysScrollableScrollPhysics(),reverse: true,scrollDirection: Axis.vertical,
       child: GridView.builder(

           physics: const AlwaysScrollableScrollPhysics(),gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 1.25,crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10),
           itemCount: 17,shrinkWrap: true,scrollDirection: Axis.vertical,itemBuilder: (_,index)
       {

         return   Container(width: 50,height: 100,color: Colors.black,child: Image.network(imageList[index]),);

       }),
     );
   }
}

