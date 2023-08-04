import 'package:flutter/material.dart';
import 'package:untitled/Screens/Home/Components/app_bar.dart';
import 'package:untitled/Screens/Home/Components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          // Check the device's orientation to determine the image aspect ratio
          bool isPortrait = orientation == Orientation.portrait;
          String imagePath = isPortrait
              ? "assets/images/bgggg.png" // Use the portrait image
              : "assets/images/bg.png"; // Use the landscape image

          return FractionallySizedBox(
            widthFactor: 1.0, // Set the image's width to match the container's width
            heightFactor: 1.0, // Set the image's height to match the container's height
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              child: const SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomAppBar(),
                    Body(),
                    // Add any other widgets here as needed
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}