import 'package:flutter/material.dart';

class mediview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(60),
          topLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
              bottomLeft: Radius.circular(5)
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(1.1,1.1),
              blurRadius: 15
            )
          ]
        ),
      ),
    );
  }
  
}