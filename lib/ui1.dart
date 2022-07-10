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
              image: NetworkImage("https://images.unsplash.com/photo-1634822929331-ee4dc2c97fc4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),fit: BoxFit.cover)
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black38
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 110,),
                      Center(child: Text("Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
                      Center(
                        child: Text("Welcome to this awesome login app.",style: TextStyle(fontSize: 15,color: Colors.white70)
                    ,)
                      ),
                      Center(
                          child: Text("You are awesome.",style: TextStyle(fontSize: 15,color: Colors.white70)
                            ,)
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 35,
                              width: 230,
                              color: Colors.deepOrange,
                              child: Center(
                                child: Text("Login",style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),)

                            ),
                              ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 35,
                              width: 230,
                              color: Colors.grey,
                              child: Center(
                                  child: Text("Signup",style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),)

                              ),

                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35,),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          height: 38,
                          width: 190,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.deepOrange,
                                width: 1.5,
                              ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.g_mobiledata_sharp,color: Colors.white,size: 30,),
                              Text("Continue with Google",style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),)
                            ],
                          ),


                        ),
                      )
                    ],
                  )
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}