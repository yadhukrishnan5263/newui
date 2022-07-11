import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FadeAppBar extends StatelessWidget {
  final double scrollOffset;

  FadeAppBar({Key? key, required this.scrollOffset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              color: Colors.black12.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
              offset: Offset(1.1,1.1),
              blurRadius: 10
            )
          ],

          color: Colors.white
              .withOpacity((scrollOffset / 100).clamp(0, 1).toDouble())),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              height: 50,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Diary",style: TextStyle(fontSize:24,fontWeight: FontWeight.w100),),

                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.calendar_today),
                        SizedBox(
                          width: 5,
                        ),
                        Text("15 May"),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
