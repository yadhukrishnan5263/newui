import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class mediview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(60),
                topLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
                bottomLeft: Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black38,
                  offset: Offset(1.1, 1.1),
                  blurRadius: 15),
            ]),
        child: Column(
          children: [
            Container(
              height: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 55,
                          width: 120,

                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 3,
                                color: Colors.blue[100],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Eaten",
                                      style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 28,
                                          height: 28,
                                          child: Image.asset(
                                              "assets/fitness_app/burned.png"),
                                        ),
                                        SizedBox(width: 5,),
                                      Text("1127",),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text("kcal", style: TextStyle(color: Colors.black45),),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 120,

                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 3,
                                color: Colors.pink[100],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Burned",
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 28,
                                          height: 28,
                                          child: Image.asset(
                                              "assets/fitness_app/burned.png"),
                                        ),
                                        SizedBox(width: 5,),
                                        Text("102",),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text("kcal", style: TextStyle(color: Colors.black45),),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: CircularPercentIndicator(
                        radius: 45.0,
                        restartAnimation: true,
                        rotateLinearGradient: true,

                        backgroundWidth: 4,
                        linearGradient: LinearGradient(colors: [
                          Colors.indigo,
                          Colors.indigo.shade100,
                        ],
                            begin: Alignment.topRight,end: Alignment.bottomLeft),
                        lineWidth: 13.0,
                        animation: true,
                        animationDuration: 3000,
                        percent: 0.7,
                        animateFromLastPercent: true,
                        center: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "1503",
                                style: TextStyle( fontSize: 20.0,color: Colors.indigo),
                              ),
                              Text("kcal left", style: TextStyle(color: Colors.black45),),
                            ],
                          ),
                        ),

                        circularStrokeCap: CircularStrokeCap.round,
                        // progressColor: Colors.purple,
                        widgetIndicator: RotatedBox(
                          quarterTurns: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.circle, size: 5,color: Colors.white,),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(height: 2,
              color: Colors.black26,
              ),
            )
          ],
        ),
      ),
    );
  }
}
