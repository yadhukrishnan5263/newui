import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: profilepage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(backgroundColor: Colors.grey[300]),
  ));
}

class profilepage extends StatelessWidget {
  final List<String> Texts = [
    "Privacy",
    "Purchase History",
    "Help & Supprot",
    "Settings",
    "Invite a Friend",
    "Log Out"
  ];
  final List<Icon> ics = [
    Icon(Icons.privacy_tip_outlined),
    Icon(Icons.history),
    Icon(Icons.help_outline),
    Icon(Icons.settings_outlined),
    Icon(Icons.person_add_alt),
    Icon(Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SafeArea(
              child: Container(
                child: Row(
                  children: [
                    SafeArea(
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.grey,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey[300],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(-5, -5),
                                blurRadius: 15,
                                spreadRadius: 2,
                              ),
                              BoxShadow(
                                  color: Colors.black38,
                                  offset: Offset(5, 5),
                                  blurRadius: 15,
                                  spreadRadius: 2)
                            ]),
                      ),
                    ),
                    SafeArea(
                      child: SizedBox(
                        width: 379,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.menu,
                        color: Colors.grey,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey[300],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-5, -5),
                              blurRadius: 15,
                              spreadRadius: 2,
                            ),
                            BoxShadow(
                                color: Colors.black38,
                                offset: Offset(5, 5),
                                blurRadius: 15,
                                spreadRadius: 2)
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 400,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq2hiMM4LY3J-nPX9QFO0URL2siUWeJP-t-A&usqp=CAU"),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              offset: Offset.zero,
                              blurRadius: 5,
                              spreadRadius: 2),
                          BoxShadow(
                              color: Colors.black54,
                              offset: Offset.zero,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ]),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: NetworkImage(
                              "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAAAY1BMVEU6WJ7///9ofbM1VJwdRpb8/f8aRJUpTJnw8vdsf7PByd4lSpjT2egwUZvX3Os3Vp1LZ6dfda5YcKuZpsnO1OWtt9N7jLv19/uImMHo7PTc4OyxvdYUQZRZcq0AMI7i5/EAOJBh473TAAABh0lEQVR4nO3b0W7aQBBAURIDTuK4DoEEaNqS///KCpWIXbKsmJfaD+d8wejKsryj9WwGAAAAAAAAAAAAAAAAAABQNAxDczb2NFPW9G37sno8U+uapntdbx62i7uz5dgzTVW72qSdxKro1pelxLqmeyu0Equofy+1EqtkaLdi3arfFVuJVdJuxLrZ/NtHg1hXDeVWYhU0r3mj/fM/P9uxJ5ugZpW1+ui/jD3YFDX3Wax+GHugKctjLeZjzzNpF7G81ms8WQFiBYgVINZtlke/fmex/ixPVMssr5xzTtRK1WNtxUrVYx26seeblHqsZwfpVD3Wk1ipeqwPa4dUPdZarFQ91k6sVD2WiyGZeqwXW8BUd/hxdMgaPZ1sZmJluqN5toNffLYnWhXYOgSIFSBWgFgBYgWIFSBWgFgBYgWIFSBWgFgBYgWIFSBWgFgBYgWIFSBWgFgBYgWIFSBWgFgBYgWIFSBWgFgBF/8bilXT3G8fzvYudAMAAAAAAAAAAAAAAAAAAPB//AX5RQ4cWZetrAAAAABJRU5ErkJggg=="),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQECITKZw0N6N01d6uJGEDzNxBqutbvoBVZFA&usqp=CAU"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: NetworkImage(
                              "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAZlBMVEUdofL///8Am/EAnfIAmvEUn/L4/f/g8v3q9v6v2vr0+/7w+f4bovLS6/zC4/vl9P15wvaPzPiEx/ed0viVzvi43/rM6PxhufU2qfPV7PzA4vtkuvVuvfZatvW23fpCrfQAlvEup/OQVZHKAAAE2UlEQVR4nO3b6ZaiMBAFYExSAooLi7gizfu/5ATtRQUxQeyUPff7MX16ju3JBZJUAngeAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAf4m+//mLSCqqNmW5iYT4gyFJUpHli8lIm/qr5Ua2hnzb5CSjbDG6NM4PjYwky82bRpSUjkcN/kFdfUpE6ThynrBXA9Rh0sxXyyv5/cWq0kchFMM1tR9artTjT938jUzb82mTdR2JSNB6V/++eUGb7Uh/FFseZqL53YBaooTyijA4/RJaH76hybVuxtIqIoltV8DRKM3yr2t46n4oFadL6WATUeXdAS/t5ePvey2KzkfbImJHH2yeTefDjEfFZ1uMI8qiM9OV3elL9cz5wgSPiOyrNUvDIUGPTDYBdV1XhC4Tqt3PFaVMBgWZGAdMlRRUpsFo7bIzXg6LOzKIKAPDfMFelMmq/nTmtDOKy9LS3zw82HQwPYP5bPp54NyONtenZHx41BltZorPw9a+4vg14uaiO3ZfqRS1lNudgt9Kco+4HRkXRddSliyminPAynVNI5pX3TG63xttZvvT8aqc1zQibDZrnIh77ZIrq4C++7WhXju1tSxYyvaMcmYT0PEo+qlsb9xiSW390aKgGelFmfsz6HW0OciqZgvl4s6nW6TOV4ZnMr7bxPGqEDeTmc05TJ0PMmfdM9w0LK6uVpt+yCWhJ1tG06uQu6T0lD6XdVCbsZRNQpMyJcjTQxmRlB/Zw8/yS2i8HhoHs/mxcwvqWsYmYY9q2kjCJyFFFnOAuSWL2bDendcRy+kLEq5ZJKRqXupxkso7e/TPKFkk9LzRaJtUUtGDTd4eGFTdNXmaKvxVvLeqqQ0ETAaaxgp4MDMuCS0mODshk4QdhfeTEh7dUE8Ur0rIZSh9WUcccwnoSYta2saMyfq3zw6oGT4rC+sNQkMFm6tUL2xfUZQ63+q+ZH6zxcKKxUbiF/VgH6OPPZ+LtNaytf+kqetIDUOvLNw/CNUw8FlkU9B8o7Y7NP35/E6h7ouF6Q16A1y2aK6Rlw21lTFlGdCrHwZNhhlxGFVsPyKhtI+PTdtzsZYYPDPbROuJP8tnfjBEGc7gYbYWxg8CPTbheAoH3c2IOfbCIVcYXHYRG0TrIws9MKu5L8hhCrc5m92LpmqICX9cuY7RwfqJrjaMbhq2kPunA85ZToU/5P7JCX/Kcyq8IMvn7gYz2mC7h+iZdWLC/Bo9U2Xvu1HuXwAyQ6IMexWpc9bD6DVJRTzfLuzquK3Jk/58kFQfldVdqcVb5asp8zdHar7r9loisbGrUrfsJ8JrwrO8H5W7f8vQAgkRW64V7V+zdUiKynpTMXubgETC21vP9xOnb6aZIymoWq7stzJm7t8ZuS+KhBKaUrQpklWvhzJsXwP/XRQHwXa23S4mfRdN+YZ1QD2sVHYv+dwITF+sdUmUvfefJpnHuAf+IFH0yjhJO95wY4ZUubLth4vY4/FOkyESUWwxkI7na+n4zVd7JGWZGoWc5Mvq7eKd6Sm/jPPugm0RHiL1XgvdG1JRmRy3LTHH/jzdV+r9rs4mOpVvxSFOw+NuN98dwzReFhv9v/KtT94N0jm1uqKrf/6laAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAr/cPw7c4Q4blL04AAAAASUVORK5CYII="),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://kinsta.com/wp-content/uploads/2018/06/linkedin-marketing-2-360x180.png"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Chromicle",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      )),
                ),
                Text(
                  "@amFoss",
                  style: TextStyle(fontSize: 14),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Text(
                    ("Mobile App Developer and Open Source Enthusiastic"),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.cyanAccent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
/*

 */



