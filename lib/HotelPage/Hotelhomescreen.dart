import 'package:flutter/material.dart';
import 'package:uiprojects/HotelPage/hoteldetailview.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelHomeScreen(),
  ));
}

class HotelHomeScreen extends StatelessWidget {
  final List<String> hotelname = [
    "Grand Hyatt Kochi Bolgatty",
    "Kochi Marriott Hotel",
    "Crowne Plaza Kochi, an IHG Hotel",
    "Taj Malabar Resort & Spa, Cochin",
    "Four Points by Sheraton Kochi Infopark",
    "Le Meridien Kochi",
    "Holiday Inn Cochin, an IHG Hotel",
    "Forte Kochi",
    "Radisson Blu Kochi",
  ];
  final List<String> images = [
    "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=874&q=80",
    "https://images.unsplash.com/photo-1586105251261-72a756497a11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=658&q=80",
    "https://images.unsplash.com/photo-1595576508898-0ad5c879a061?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    "https://images.unsplash.com/photo-1631049552240-59c37f38802b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1540518614846-7eded433c457?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=857&q=80",
    "https://images.unsplash.com/photo-1594563703937-fdc640497dcd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.purple,
          leading: Icon(Icons.menu),
          expandedHeight: 200,
          pinned: false,
          floating: false,
          actions: [
            Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            )
          ],
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Container(
              height: 30,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(1.1, 1.1),
                        blurRadius: 15)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    labelText: "Kakkanad,Kochi",
                    border: InputBorder.none),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          color: Colors.pink,
                          height: 80,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.hotel,
                                color: Colors.white,
                              ),
                              Text(
                                "Hotel",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          color: Colors.blue,
                          height: 80,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.restaurant,
                                color: Colors.white,
                              ),
                              Text(
                                "Restaurant",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          color: Colors.orange,
                          height: 80,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.coffee,
                                color: Colors.white,
                              ),
                              Text(
                                "Cafe",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>hoteldetails()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(1.1,1.1),
                        blurRadius: 5
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [Container(
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(images[index]),
                                    fit: BoxFit.cover)),

                          ),
                            Container(
                              height: 250,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      alignment: Alignment.bottomRight,
                                      height: 30,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white
                                      ),
                                      child: Center(child: Text("1000",style: TextStyle(fontWeight: FontWeight.bold),)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 250,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.star_outline,color: Colors.white,),
                                    ),
                                  )
                                ],
                              ),
                            )
                  ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          hotelname[index],
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Text(
                        "Kochi,Kerala",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star_half,color: Colors.green,),
                          SizedBox(width: 5,),
                          Text("(220 reviews)",style: TextStyle(fontSize: 10),)


                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          );
        }, childCount: images.length))
      ],
    ));
  }
}
