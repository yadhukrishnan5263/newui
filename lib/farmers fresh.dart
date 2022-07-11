import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8MoBx6_0P0cZz9X_BMoFUc_IINzx_4BFc0A&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMfaMO-_6Uyvn0swpvbqxScV2JlWPF8dIrvA&usqp=CAU",
      "https://media.istockphoto.com/photos/healthy-fresh-rainbow-colored-fruits-and-vegetables-in-a-row-picture-id1208790364?b=1&k=20&m=1208790364&s=170667a&w=0&h=20y3Wd6MxMOEDxe6JVbSDqqSNOJdsSJRL20l4XagzmE=",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd5ROHi7CO86cb2o1-dwbwnvjLVZU8oHeb3Q&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX_zXh-29XbL1Rkrds1fkgb519V0IZMhvY8Q&usqp=CAU",
      "https://www.zuken.com/en/wp-content/uploads/sites/2/2019/06/BL0236-spices-1280x620-1.jpg",
    ];
    final List<String> category = [
      "Vegetables",
      "Fruits",
      "Exotic",
      "Fresh Cuts",
      "Nutrition Charged",
      "Packed Flavors",
    ];
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: const Text('FARMERS FRESH ZONE'),
            actions: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
              Center(child: Text("Kochi")),
              Icon(Icons.keyboard_arrow_down_outlined)
            ],
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for Vegitables,Fruits',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green[100],
                          border: Border.all(color: Colors.green),
                        ),
                        child: Center(
                            child: Text(
                          "VEGITABLES",
                          style: TextStyle(color: Colors.green),
                        )),
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green[100],
                          border: Border.all(color: Colors.green),
                        ),
                        child: Center(
                            child: Text(
                          "FRUTIS",
                          style: TextStyle(color: Colors.green),
                        )),
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green[100],
                          border: Border.all(color: Colors.green),
                        ),
                        child: Center(
                            child: Text(
                          "EXOTIC",
                          style: TextStyle(color: Colors.green),
                        )),
                      ),
                      Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green[100],
                          border: Border.all(color: Colors.green),
                        ),
                        child: Center(
                            child: Text(
                          "FRESH CUTS",
                          style: TextStyle(color: Colors.green),
                        )),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    "https://res.cloudinary.com/dshminc3x/image/upload/v1657526045/eat-veggies_tpl6dx.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.green)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.timer,
                                color: Colors.green,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "30 MINS POLICY",
                                style: TextStyle(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.share_location_outlined,
                                color: Colors.green,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "TRACEABILITY",
                                style: TextStyle(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.people,
                                color: Colors.green,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "LOCAL SOURCEING",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Shop By Category",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 7,
                      crossAxisSpacing: 5,
                      children: List.generate(
                        6,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                                boxShadow: [
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
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Container(
                                  height: 95,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          topLeft: Radius.circular(10)),
                                      image: DecorationImage(
                                          image: NetworkImage(images[index]),
                                          fit: BoxFit.cover)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    category[index],style: TextStyle(fontWeight: FontWeight.w100,color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "CART",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "ACCOUNT")
        ],
      ),
    );
  }
}
