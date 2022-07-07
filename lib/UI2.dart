import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:uiscreen2(),));
}

class uiscreen2 extends StatelessWidget {
  final List<Map>articles=[
    {
      "title":"How to seen Like You Always Have Your shot Toghter",
      "author":"jonhy vino",
      "time":"4 min read",
    },
    {
      "title":"Always Happy",
      "author":"james ",
      "time":"4 min read",
    },
    {
      "title":"How to seen Like You ",
      "author":"jack",
      "time":"4 min read",
    },
    {
      "title":"How to seen Like You Always Have Your shot Toghter",
      "author":"Alexander",
      "time":"4 min read",
    }


  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("Categories"),
            titleTextStyle: TextStyle(color: Colors.black),
            centerTitle: true,
            leading: Icon(Icons.category,color: Colors.black,),
            actions: [
              Icon(Icons.search,color: Colors.black,),
            ],
            bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.black,
              labelColor: Colors.pinkAccent,
              labelStyle:TextStyle(fontWeight: FontWeight.bold),
              tabs: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text("For You"),
                ),
                Padding(padding: EdgeInsets.all(15),
                  child: Text("Design"),
                ),
                Padding(padding: EdgeInsets.all(15),
                child: Text("Beauty"),),
                Padding(padding: EdgeInsets.all(15),
                  child: Text("Education"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.separated(
                padding: EdgeInsets.all(16),
                  itemBuilder: (context ,index){
                    return _articlebulid(index);
                  },
                  separatorBuilder: (context,index)=> SizedBox(height: 16,),
                  itemCount: articles.length),
              Text('page2'),
              Text("page3"),
              Text("page4"),
            ],),
        ),


    );
  }

  Widget _articlebulid(int index) {
Map article = articles[index];
return Container(
  color: Colors.white,
  child: Stack(
    children: [
      Container(
        height: 90,
        width: 90,
        color: Colors.cyanAccent,
      ),
      Container(
        color: Colors.white,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              color: Colors.cyanAccent,
              height: 100,
              width: 80,
              child: Image(
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP3xibeoa7vPtGBJxUHmB40clxHfszE79HXQ&usqp=CAU"),fit: BoxFit.fill,
              ),

            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                children: [
                  Text(article["title"],
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
                    ,)
                ],
              ),
            )
          ],

        ),

      )
    ],
  ),
);
  }
}