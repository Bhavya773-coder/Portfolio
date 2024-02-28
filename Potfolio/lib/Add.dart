import 'package:flutter/material.dart';
import 'Home.dart';
class AddPage extends StatelessWidget {

  List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM2zteJ7GzeQfhnCaghjQ_fpp1mwLm1m8WBw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNjZkUK2wsbfmFk6Yh0YfhaeB5wp46vO1FtA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3S8nOwvQAafiCcPdEzW79BpxhxqWHZw6sVQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZH_NLBqJZYLeAzwyyn-teWb7x6VZ5lTmGRQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZl4h438joH3zgf8UGVNtmSclY3sDd52WQCA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxqD3dojNFiUlEyz_-MFaf9FSvMNKQ1yN-VQ&usqp=CAU"

  ];   AddPage({super.key});




  @override
  Widget build(BuildContext context) {


    int count=imageList.length;
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(

                children: [
                  IconButton(onPressed: (){
                    Navigator.popAndPushNamed(context, "/");
                  }, icon: Icon(Icons.arrow_back)),
                  SizedBox(width: 20,),
                  Text("New Collection",style: TextStyle(fontSize: 20),)
                ],
              ),

              const SizedBox(height: 100,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white12),

                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Text("Uplode File",style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Recommended",style: TextStyle(fontWeight: FontWeight.bold))

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("choose a file to uplode"),
                              Text("8000 X 8000 px")

                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: g1(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: buildGridView(count),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );


  }



  GridView buildGridView(int counter) {
    return GridView.builder(

        physics: const NeverScrollableScrollPhysics(),gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,crossAxisSpacing: 10,mainAxisSpacing: 20),
        itemCount: counter,shrinkWrap: true,itemBuilder: (_,index)
    {
      return   Container(width: 50,height: 100,color: Colors.black,child: Image.network(imageList[index]),);

  });
}
GridView g1()
{
  return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,crossAxisSpacing: 20,mainAxisSpacing: 20),
      itemCount: 1,shrinkWrap: true,itemBuilder: (_,index)
  {

    String url;
    return Image.network(imageList[index]);
  });
}}
