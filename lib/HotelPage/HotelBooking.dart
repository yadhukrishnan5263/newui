import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelBooking(),
  ));
}

class HotelBooking extends StatelessWidget {
  final List<String> hotelname = [
    "Grand Hyatt Bolgatty",
    "Marriott Hotel",
    "Crowne Plaza",
    "Taj Malabar Resort",
    "Four Points",
    "Le Meridien Kochi",
    "Holiday Inn Cochin",
    "Forte Kochi",
    "Radisson Blu",
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

  HotelBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverAppBar(
              toolbarHeight: 80,
              backgroundColor: Colors.grey[100],
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello yadhu",style: TextStyle(color:Colors.black38,fontSize: 13),),
                  Text("Find Your Favouriate Hotel",style: TextStyle(color:Colors.black,fontSize: 16),)
                ],
              ),
              expandedHeight: 180,
              pinned: false,
              floating: false,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.white24,
                          offset: Offset(-10, -10),
                          blurRadius: 5,
                          spreadRadius: 0),
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(10, 10),
                          blurRadius: 5,
                          spreadRadius: 0),
                    ], borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1531891437562-4301cf35b7e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"),fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(width: 5,)

              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white24,
                            offset: Offset(-10, -10),
                            blurRadius: 10,
                            spreadRadius: 0),
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(10, 10),
                            blurRadius: 10,
                            spreadRadius: 1),
                      ],),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                            ),
                            labelText: "Search Hotels",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Popular Hotel",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ),
                    popularHotel(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hotel Packages",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                          Text(
                            "view all",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),


            ),
            hotelpackage(),
          ],
        ));
  }

  popularHotel() {
    return Container(
      color: Colors.grey[100],
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hotelname.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.white38,
                  offset: Offset(-10, -10),
                  blurRadius: 10,
                  spreadRadius: 0),
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(10, 10),
                  blurRadius: 10,
                  spreadRadius: 0),
            ], borderRadius: BorderRadius.circular(10), color: Colors.white),
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(images[index]),
                          fit: BoxFit.cover)),
                  height: 115,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                  child: Text(
                    hotelname[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 3,
                    left: 8,
                    right: 8,
                  ),
                  child: Text(
                    "Five Star Hotel",
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$180 / night",
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                      ),
                      Row(
                        children: [
                          Text(
                            "4.5",
                            style: TextStyle(color: Colors.blue, fontSize: 12),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.blue,
                            size: 14,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  hotelpackage() {
    return SliverList(delegate: SliverChildBuilderDelegate(childCount: hotelname.length,(context, index) =>
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 130,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.white24,
                  offset: Offset(-10, -10),
                  blurRadius: 10,
                  spreadRadius: 0),
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(10, 10),
                  blurRadius: 10,
                  spreadRadius: 0),
            ], borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(10),bottomLeft:Radius.circular(10)),
                    image: DecorationImage(image: NetworkImage(images[index]),fit:BoxFit.cover,)
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 2),
                      child: Text(
                        hotelname[index],
                        style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Text(
                        "Five Star Hotel",
                        style: TextStyle(fontSize: 10, color: Colors.black54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8,top: 5,bottom: 2),
                      child: Text(
                        "\$180 / night",
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.directions_car,color: Colors.blue,),
                        ),
                        Icon(Icons.bedroom_baby_outlined,color: Colors.blue,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.restaurant,color: Colors.blue,),
                        ),
                        Icon(Icons.wifi,color: Colors.blue,),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.white24,
                          offset: Offset(-10, -10),
                          blurRadius: 10,
                          spreadRadius: 0),
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(10, 10),
                          blurRadius: 10,
                          spreadRadius: 0),
                    ], borderRadius: BorderRadius.circular(10), color: Colors.blue),
                    height: 40,
                    width: 90,
                    child: Center(child: Text("Book Now",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                )
              ],
            ),
          ),
        ),
      )
      ,));
  }
}
