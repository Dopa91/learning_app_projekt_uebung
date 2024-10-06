import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class MyImageSlider extends StatelessWidget {
  const MyImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorRadius: 0,
      autoPlayInterval: 4200,
      indicatorColor: Colors.purple,
      onPageChanged: (value) {
        debugPrint("Next Page: $value");
      },
      isLoop: true,
      width: 180,
      children: [
        Image.asset(
          "assets/images/bluesky.jpg",
          fit: BoxFit.fitWidth,
        ),
        Image.asset(
          "assets/images/sunnyplace.jpg",
          fit: BoxFit.fitWidth,
        ),
        Image.asset(
          "assets/images/flowerbird.jpg",
          fit: BoxFit.fitWidth,
        ),
        Image.asset(
          "assets/images/snowplace.jpg",
          fit: BoxFit.fitWidth,
        ),
        Image.asset(
          "assets/images/redbluesky.jpg",
          fit: BoxFit.fitWidth,
        ),
      ],
    );
  }
}
