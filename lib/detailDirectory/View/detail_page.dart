import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/detail_controller.dart';

import '../../helper/themes.dart';
import '../Controller/detail_controller.dart';

class DetailPage extends StatelessWidget {
  DetailController controller = Get.find<DetailController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(60, 69, 98, 1.0),
              Color.fromRGBO(45, 45, 78, 1.0),
              Color.fromRGBO(0, 0, 0, 1.0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Your image widget
            Padding(
              padding: EdgeInsets.only(top: 150),
              child: Image.network(
                'https://i1.sndcdn.com/artworks-01ju7FIf3h1q-0-t500x500.jpg',
                width: 450, // Adjust the width as needed
                height: 450, // Adjust the height as needed
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  // Title and Author in a Column
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Song Title',
                        style: subtitleText,
                      ),
                      Text(
                        'Author Name',
                        style: textFieldGrey,
                      ),
                    ],
                  ),
                  Spacer(),
                  // Heart icon
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                    size: 24,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Progress bar with circles and time labels
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Wider progress bar
                      Container(
                        width: 450, // Adjust the width as needed
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white, // Lighter color for unfilled part
                              Colors.grey, // Color for filled part
                            ],
                          ),
                        ),
                      ),
                      // Circle at the current progress
                      Positioned(
                        left: 200, // Adjust the position as needed
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      // Circle at the end of the progress
                    ],
                  ),
                  // Time labels
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2:14',
                          style: textFieldGrey,
                        ), // Replace with the current time
                        Text(
                          '4:30',
                          style: textFieldGrey,
                        ), // Replace with the total time
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  padding: EdgeInsets.only(right: 100),
                  icon:
                  Icon(Icons.shuffle, color: Colors.white, size: 40),
                  onPressed: () {},
                ),
                // Rewind button
                IconButton(
                  padding: EdgeInsets.only(right: 20),
                  icon:
                      Icon(Icons.skip_previous, color: Colors.white, size: 40),
                  onPressed: () {},
                ),
                // Play/Pause button using GetBuilder
                GetBuilder<DetailController>(
                  init: DetailController(),
                  builder: (controller) {
                    return GestureDetector(
                      onTap: () {
                        controller.togglePlayPause();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: backColor, // Circle color
                        ),
                        padding: EdgeInsets.all(8),
                        child: Obx(() => Icon(
                              (controller.isPlaying.value ?? false)
                                  ? Icons.pause
                                  : Icons.play_arrow,
                              size: 40,
                              color: Colors.white,
                            )),
                      ),
                    );
                  },
                ),
                // Fast forward button
                IconButton(
                  padding: EdgeInsets.only(left : 20),
                  icon: Icon(Icons.skip_next, color: Colors.white, size: 40),
                  onPressed: () {},
                ),
                IconButton(
                  padding: EdgeInsets.only(left : 100),
                  icon: Icon(Icons.repeat, color: Colors.white, size: 40),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
