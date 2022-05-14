import 'package:flutter/material.dart';
import 'package:hotelbooking/pages/widgets/hotels.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    var safearea = MediaQuery.of(context).padding.top;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 245, 252),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: safearea,
              ),
              SizedBox(
                height: 60,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Hi Sachit",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(3, 100, 176, 65)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.notifications_none_rounded,
                        color: Color.fromRGBO(3, 100, 176, 65),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Do you want to find hotels?",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(143, 0, 0, 0)),
                ),
              ),
              SizedBox(
                child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  const Color.fromRGBO(213, 225, 243, 50),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Search hotels...",
                              hintStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w100,
                                color: Color.fromARGB(143, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(3, 100, 176, 65),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 60,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Popular Hotel",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(143, 0, 0, 0)),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Text("view all",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w100,
                                color: Color.fromARGB(143, 0, 0, 0)))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        child: const Hotels(
                            title: "Archipel Mansion",
                            image: "assets/hotels/hotel2.png",
                            location: "Santorini, Greece"),
                        onTap: () {
                          Navigator.pushNamed(context, '/archipel');
                        },
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/finika');
                        },
                        child: const Hotels(
                            title: "Finika Residence",
                            image: "assets/hotels/hotel1.png",
                            location: "Finika, Greece"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/archipel');
                        },
                        child: const Hotels(
                            title: "Archipel Mansion",
                            image: "assets/hotels/hotel1.png",
                            location: "Santorini, Greece"),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Recommended",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(143, 0, 0, 0)),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Text("view all",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w100,
                                color: Color.fromARGB(143, 0, 0, 0)))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      //recommendation(
                      // name: "pina Caldera Residence",
                      // location: "Oia Santorini,Greece",
                      // image: "assets/hotels/recom1.png"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded,
                  color: Colors.black38, size: 25),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border_rounded,
                  color: Colors.black38, size: 30),
              label: "Favourites",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded,
                  color: Colors.black38, size: 30),
              label: "Profile",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromRGBO(3, 100, 176, 65),
        ));
  }
}
