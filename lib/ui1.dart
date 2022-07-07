import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: welocome(),));
}

class welocome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEwxFOSq-vrcV1Z_QmN6nuSlz15n-bOmd4fQ&usqp=CAU"),fit: BoxFit.cover)
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black54
              ),
             /* child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text("WELCOME",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ],
              ),

              */
            ),
            
          ],
        ),
      ),
    );
  }
}