import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../helper/themes.dart';
import '../Controller/home_controller.dart';
import 'dart:math' as math;

class HomePage extends StatelessWidget {
  HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xF3C4562).withOpacity(0.5),
                const Color(0xF2D2D4E).withOpacity(0.5),
                const Color(0xF000000),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 34,
                      width: 34,
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      child: Image.asset('assets/Icon.png'),
                    ),

                    Container(
                      height: 37,
                      width: 205,
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      child : Text(
                        'Welcome Zidan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  height: 75,
                  width: 399,
                  child: BubbleNavbar(['Recommended For You', 'Most Popular', 'Best Of']),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 5, right: 24.0),
                  child: Container(
                    width: 378,
                    height: 135,
                    padding: EdgeInsets.only(left: 30, top: 20),
                    decoration: BoxDecoration(
                      color: backColor,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xF3C4562).withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bayar 20 Ribu',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              'Premiumnya 2 Bulan',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              'Dengarkan musik tanpa jeda dan',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),

                            Text(
                              'putar lagu pada urutan apapun setiap saat.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),

                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(180 * (math.pi / 180)), // Rotate 180 degrees
                          child: Image.asset('assets/ads.png', height: 300),
                        ),

                      ],
                    ),
                    ),
                ),

                Container(
                  width: 393,
                  height: MediaQuery.of(context).size.height * 0.9,
                  margin: const EdgeInsets.only(left: 24, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Today's Top Hits",
                          style: TextStyle(
                              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)
                      ),

                      Container(
                        width: double.infinity,
                        height: 120,
                        margin: const EdgeInsets.only(top: 10),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 4.0, right: 10.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 81,
                                    height: 81,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                        image: AssetImage(controller.topHits[index].image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    controller.topHits[index].title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  Text(
                                    controller.topHits[index].artist,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),

                      SizedBox(height: 20),

                      Text(
                          "Made For Zidan",
                          style: TextStyle(
                              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)
                      ),

                      Container(
                        width: double.infinity,
                        height: 120,
                        margin: const EdgeInsets.only(top: 10),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 4.0, right: 10.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 81,
                                    height: 81,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                        image: AssetImage(controller.zidan[index].image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    controller.zidan[index].title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  Text(
                                    controller.zidan[index].artist,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),

                      SizedBox(height: 20),

                      Text(
                          "Recently Played",
                          style: TextStyle(
                              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)
                      ),

                      Container(
                        width: double.infinity,
                        height: 120,
                        margin: const EdgeInsets.only(top: 10),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 4.0, right: 10.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 81,
                                    height: 81,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                        image: AssetImage(controller.recent[index].image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    controller.recent[index].title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  Text(
                                    controller.recent[index].artist,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

              ],
          ),
        ),
      ),
    );
  }
  Widget BubbleNavbar(List<String> recommendations) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: recommendations.map((recommendation) {
            return Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 12), // Adjust the left spacing between recommendations
              child: Container(
                decoration: BoxDecoration(
                  color: backColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xF3C4562).withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                constraints: BoxConstraints(
                  maxHeight: 35,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      recommendation,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
