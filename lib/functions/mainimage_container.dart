import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:food_delivery_app/utils/constant.dart';

class ImageCarouselWithDots extends StatefulWidget {
  @override
  _ImageCarouselWithDotsState createState() => _ImageCarouselWithDotsState();
}

class _ImageCarouselWithDotsState extends State<ImageCarouselWithDots> {
  int _currentIndex = 0;

  final List<String> imagePaths = [
    'assets/images/Main_image.png',
    'assets/images/pic3.jpg',
    'assets/images/rowPic1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 17),
            decoration: kImageBoxDecoration,
            child: CarouselSlider(
              items: imagePaths.map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: 353,
                      height: 145,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 145,
                viewportFraction: 1.0,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imagePaths.map((url) {
              int index = imagePaths.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

Widget buildImageRichContainer(BuildContext context) {
  return ImageCarouselWithDots();
}
