import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Model/playlist_model.dart';
import '/helper/themes.dart';
import '../Controller/playlist_controller.dart';

class PlaylistPage extends StatelessWidget {
  PlaylistController controller = Get.find<PlaylistController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(60, 69, 98, 1.0),
            Color.fromRGBO(45, 45, 78, 1.0),
            Color.fromRGBO(0, 0, 0, 1.0)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          padding: EdgeInsets.only(left: 90, right: 90, top: 90, bottom: 40),
          child: Column(
            children: [
              Image.network(
                  'https://i1.sndcdn.com/artworks-01ju7FIf3h1q-0-t500x500.jpg'),
              Text(
                'A Thousand Years',
                style: titleText,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.scdn.co/image/ab67616d0000b273b7bc00a22e8cf49d45a3b8b2'),
                radius: 20,
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('James Arthur', style: textField),
                  SizedBox(height: 4),
                  Text('Album ~ 200', style: textFieldGrey),
                  SizedBox(height: 14),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: greyColor,
                      ),
                      SizedBox(width: 16),
                      Icon(
                        Icons.more_vert,
                        color: greyColor,
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: GetBuilder<PlaylistController>(
                        init: PlaylistController(),
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
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 200,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                // Other widgets or content
                ListView.builder(
                  shrinkWrap: true,  // Set shrinkWrap to true
                  physics: NeverScrollableScrollPhysics(),  // Disable ListView's scrolling
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Info Lagu
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Title $index', style: subtitleText),
                              Text('Author $index', style: textFieldGrey),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              // Aksi ketika tombol play ditekan
                            },
                            icon: Icon(Icons.more_vert, color: greyColor),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 18),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.black, // Background color
              borderRadius: BorderRadius.circular(12.0), // Border radius
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Add SizedBox to increase space between background color and image
                SizedBox(width: 16),
                // Image with border radius
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://i.scdn.co/image/ab67616d0000b273b7bc00a22e8cf49d45a3b8b2',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16), // Add more space if needed
                // Title and Author in a Column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Song Title', style: subtitleText),
                    Text('Song Author', style: textFieldGrey),
                  ],
                ),
                Spacer(),
                // Play/Pause Icon
                GetBuilder<PlaylistController>(
                  init: PlaylistController(),
                  builder: (controller) {
                    return GestureDetector(
                      onTap: () {
                        controller.togglePlayPauseNow();
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Obx(() => Icon(
                          (controller.isPlayingNow.value ?? false)
                              ? Icons.pause
                              : Icons.play_arrow,
                          size: 40,
                          color: Colors.white,
                        )),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),


      ]),
    ));
  }
}
