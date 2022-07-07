import 'package:flutter/material.dart';
import 'package:uiprojects/UI2.dart';

void main() {
  runApp(MaterialApp(
    home: zomatoui(),
    debugShowCheckedModeBanner: false,
  ));
}

class zomatoui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: Text("DLF phase 1,Gurgaon"),
        titleTextStyle: TextStyle(color: Colors.black),
        leading: Icon(
          Icons.location_on,
          color: Colors.pinkAccent,
        ),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "data:image/png;base64,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"),
          )
        ],
      ),
      body: Column(
        children: [
          Card(
              elevation: 5,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                leading: Icon(
                  Icons.search,
                  color: Colors.pinkAccent,
                ),
                title: Text(
                  "Search for Product , integredients",
                  style: TextStyle(fontSize: 12),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [Color(0xFF14366F), Color(0xFF63E5C5)],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight),
                ),
              ),
              Container(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 15, right: 15),
                      child: Text(
                        "Up to 25% off on healthy teas",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "This everyday essential has Omega-3 fatty acis with a special",
                        style: TextStyle(color: Colors.white70),
                        maxLines: 3,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 30, right: 10),
                      child: Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Text(
                                "EXPOLRE NOW",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Center(
                                  child: Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.white,
                                size: 15,
                              ))
                            ],
                          ),
                        ),
                        /* child: ListTile(
                             title: Text("EXPOLRE NOW",style: TextStyle(color: Colors.white,fontSize: 10),),
                             trailing: Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 10,),
                           ),

                           */
                      ),
                    ),


                  ],
                ),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Container(
              height: 250,
              child: GridView.count(crossAxisCount: 3,
                mainAxisSpacing: 7,
                crossAxisSpacing: 5,
                children: List.generate(9, (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5Ji_O0O6oJ3zDipED8pLjAoWvFwI3PMaslA&usqp=CAU"),fit: BoxFit.cover,),
                          Text("Heart Health",style: TextStyle(fontWeight: FontWeight.bold,),)
                        ],
                      ),
                    ),
                  ),
                ),)
              ),
            ),
          )

        ],
      ),
    );
  }
}


