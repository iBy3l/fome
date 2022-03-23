import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  "images/banner/banner.jpg",
  "images/banner/banner2.jpg",
  "images/banner/banner3.jpg",
];

class BannerCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(top: 10),
        height: 180,
        width: 350,
        child: Builder(
          builder: (context) {
            final double height = MediaQuery.of(context).size.height;
            return CarouselSlider(
              options: CarouselOptions(
                height: height,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                autoPlay: true,
              ),
              items: imgList
                  .map((item) => Container(
                        padding: EdgeInsets.all(36.0),
                        height: 160,
                        width: 387,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage(item), fit: BoxFit.cover),
                        ),
                      ))
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
