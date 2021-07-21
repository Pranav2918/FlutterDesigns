import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int currentIndex = 0;
  List<String> img = [
    'assets/images/img1.jpg',
    'assets/images/img2.jpg',
    'assets/images/img3.jpg',
    'assets/images/img4.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CarouselSlider.builder(
            itemCount: img.length,
            itemBuilder: (context, index, realIndex) {
              return ImageView(imgPath: img[index]);
            },
            options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: img.map((url) {
              int index = img.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == index
                      ? Color.fromRGBO(255, 0, 21, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.2),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class ImageView extends StatelessWidget {
  final String imgPath;
  const ImageView({
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: FittedBox(fit: BoxFit.fill, child: Image.asset(imgPath)),
    );
  }
}
