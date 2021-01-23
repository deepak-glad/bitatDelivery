import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int currentPosition = 0;
  List<String> listpath = [
    "assets/image/delivery1.jpg",
    "assets/image/delivery2.jpg",
    "assets/image/delivery3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider.builder(
              itemCount: listpath.length,
              itemBuilder: (context, index) => MyImageView(listpath[index]),
              options: CarouselOptions(
                viewportFraction: 1.0,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPosition = index;
                  });
                },
              )),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: listpath.map((url) {
                int index = listpath.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPosition == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList()),
        ],
      ),
    );
  }
}

class MyImageView extends StatelessWidget {
  final String imgPath;

  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Image.asset(imgPath, fit: BoxFit.fill));
  }
}
