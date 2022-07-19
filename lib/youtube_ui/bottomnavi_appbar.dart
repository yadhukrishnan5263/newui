import 'package:flutter/material.dart';

class BottomB extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return BottomNavigationBar(selectedItemColor: Colors.white54,
     unselectedItemColor: Colors.white54,
     showUnselectedLabels: true,
     currentIndex: 1,
     landscapeLayout:BottomNavigationBarLandscapeLayout.spread ,
     items: [
       BottomNavigationBarItem(
         icon: Icon(Icons.home,color: Colors.white54,),
         label: "HOME",
       ),
       BottomNavigationBarItem(
         icon: Icon(Icons.explore_outlined,color: Colors.white54,),
         label: "Expolre",
       ),
       BottomNavigationBarItem(
           icon: Icon(Icons.add_circle_outline,color: Colors.white54,),
           label: "Add"),
       BottomNavigationBarItem(
         icon: Icon(Icons.subscriptions_outlined,color: Colors.white54,),
         label: "Subscription",
       ),
       BottomNavigationBarItem(
         icon: Icon(Icons.video_collection_outlined,color: Colors.white54,),
         label: "Library",
       ),

     ],);
  }
  
}
class Appbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Container(
        height: 20,
        width:  90,
        child: Image(image: AssetImage("assets/fitness_app/ytlogo.png"),fit: BoxFit.contain,),

      ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.cast),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.notifications_outlined),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            iconSize: 40,
            onPressed: () => {},
            icon: CircleAvatar(
              foregroundImage: NetworkImage('https://images.unsplash.com/photo-1601233749202-95d04d5b3c00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=838&q=80'),
            ),
          ),
        ],
    );
  }

}