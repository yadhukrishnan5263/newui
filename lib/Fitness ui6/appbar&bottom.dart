import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FadeAppBar extends StatelessWidget {
  final double scrollOffset;
  FadeAppBar({Key? key,required this.scrollOffset}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Container(
          alignment: Alignment.center,
            height: 50,
            padding: EdgeInsets.symmetric(
             // vertical: 10,
              horizontal: 24,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset.infinite,
                  blurRadius: 15,
                ),
                BoxShadow(
                  color: Colors.black,
                  offset: Offset.infinite,
                  blurRadius: 15,
                ),
              ],
              color: Colors.white.withOpacity((scrollOffset/100).clamp(0, 1).toDouble())
            ),
          child: Stack(
            children: [
              Center(
                child: ListTile(
                  title: Text("My Diary"),
                  trailing: Container(
                    height: 30,
                    width: 30,
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios),
                        SizedBox(width: 5,),
                        Icon(Icons.calendar_today),
                        SizedBox(width: 5,),
                        Text("15 May"),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),


                ),
              )
            ],
          ),

        ));
  }
}