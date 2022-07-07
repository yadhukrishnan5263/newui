import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class water extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(topRight: Radius.circular(60),
                topLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
                bottomLeft: Radius.circular(5)
            )
        ),
      ),
    );
  }

}