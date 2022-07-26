import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image(
          image: AssetImage("assets/fitness_app/sintel.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black,

          Colors.black12
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter,
            stops: [
              0.1,
              1,

            ])),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image(image: AssetImage("assets/fitness_app/sintel_title.png"),height: 100,width: 200,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.add,color: Colors.white),
                    Text("List",style: TextStyle(color: Colors.white)),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: Container(
                    height: 30,
                    width: 80,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.play_arrow),
                        Text("Play",style: TextStyle(fontWeight: FontWeight.w800))
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Icon(Icons.info_outline,color: Colors.white,),
                    Text("Info",style: TextStyle(color: Colors.white),),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      )
    ]);
  }
}
