import 'package:flutter/material.dart';

import 'page.dart';


void main(){
  runApp(MaterialApp(home: netflixhome(),));
}
class netflixhome extends StatefulWidget {


  netflixhome({Key? key}) : super(key: key);


  @override
  State<netflixhome> createState() => _netflixhomeState();
}

class _netflixhomeState extends State<netflixhome> {
 int _currentindex=0;
 final List<Widget>page=[
   homepage(),
   Text("page2"),
   Text("page3"),
   Text("page4"),
   Text("page5"),


 ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true
      ,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        leading: Image(image: AssetImage("assets/fitness_app/logo-netflix.png"),height: 35,width: 35,),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("TV Shows"),
            Text("Movies"),
            Text("My List"),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [

                  IndexedStack(
                    children: [
                      page.elementAt(_currentindex)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),




      bottomNavigationBar:  BottomNavigationBar(
        backgroundColor: Colors.orange,
        enableFeedback: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.black,tooltip: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",backgroundColor: Colors.black,tooltip: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add_to_queue),label: "Coming Soon",backgroundColor: Colors.black,tooltip: ""),
          BottomNavigationBarItem(icon: Icon(Icons.download),label: "Downloads",backgroundColor: Colors.black,tooltip: ""),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: "More",backgroundColor: Colors.black,tooltip: ""),
        ],

        unselectedItemColor: Colors.white54,
        showUnselectedLabels: true,
        onTap: _ontap,
        currentIndex: _currentindex,
      ),

    );
  }
 _ontap(int index) {
   setState((){
     _currentindex=index;
   });


 }
}
