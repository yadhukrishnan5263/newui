import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: mybank(),
  ));
}

class mybank extends StatelessWidget {
  final List<Icon>iconnames=[
    Icon(Icons.account_balance_wallet_outlined,color: Colors.red,size: 50,),
    Icon(Icons.eco_outlined,color: Colors.green,size: 50),
    Icon(Icons.payments_outlined,color: Colors.red,size: 50),
    Icon(Icons.offline_share,color: Colors.red,size: 50),
    Icon(Icons.schedule_send_outlined,color: Colors.red,size: 50),
    Icon(Icons.qr_code_2,color: Colors.red,size: 50),
  ];
 final List<String>names=[
   "My Account",
   "Load Seva",
   "Payment",
   "Fund Transfer",
   "Schedule Payment",
   "Scan To Pay"
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome! ",
              style: TextStyle(fontSize: 17),
            ),
            Text("MAUSAM")
          ],
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          SafeArea(
              child: Icon(
            Icons.qr_code_scanner,
            color: Colors.white,
          )),
          SizedBox(width: 10)
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    height: 210,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [Container(
                        height: 80,
                        color: Colors.red,
                        width: MediaQuery.of(context).size.width,
                      ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    offset: Offset(10, 10),
                                    blurRadius: 10,
                                    spreadRadius: 0),
                              ], borderRadius: BorderRadius.circular(4), color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 110,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red,width: 2.5),
                                      borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1531891437562-4301cf35b7e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"),fit: BoxFit.cover)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("YADHUKRISHNAN K",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w800,color: Colors.black),),
                                      Row(
                                        children: [
                                          Text("INR. ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.red),),
                                          Text("1,00,999.35  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
                                          Icon(Icons.remove_red_eye,color: Colors.green[200],)
                                        ],
                                      ),
                                      Text("254613875246",style: TextStyle(fontSize: 17,color: Colors.black),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.api,color: Colors.red,),
                      ),
                      Text("WOULD YOU LIKE TO?",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w800,color: Colors.black),),
                    ],
                  ),
                  Container(
                    height: 330,
                    child: GridView.count(crossAxisCount: 3,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 3,
                        children: List.generate(6, (index) => Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  iconnames[index],
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(names[index],style: TextStyle(fontWeight: FontWeight.bold,),),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),)
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.api,color: Colors.red,),
                      ),
                      Text("LAST TRANSACTION",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w800,color: Colors.black),),
                    ],
                  ),

                ],
                
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(childCount: 5,(context, index) =>
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(boxShadow: [
                  
                  BoxShadow(
                      color: Colors.black54,
                      offset: Offset(10, 10),
                      blurRadius: 10,
                      spreadRadius: 0),
                ], borderRadius: BorderRadius.circular(10), color: Colors.white),
             child: Row(
               children: [
                 ClipRRect(
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                   child: Container(
                     width: 10,
                     color: Colors.red,
                   ),
                 ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 15,bottom: 3),
                       child: Text("CWDR/",style: TextStyle(fontWeight: FontWeight.bold)),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 15,bottom: 3),
                       child: Row(
                         children: [
                           Text("56464466/5544645464",style: TextStyle(fontWeight: FontWeight.bold)),
                           SizedBox(
                             width: 150,
                           ),
                           Text("INR. 10,0000.00",style: TextStyle(fontWeight: FontWeight.bold))
                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 15,bottom: 3),
                       child: Text("12-06-2022",style: TextStyle(fontSize: 10),),
                     )
                   ],
                 )
               ],
             ),
              ),
              
            )
            ,))
        ],
      ),
    );
  }
}
