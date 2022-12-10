
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:resta_table/home.dart';



class sliderwidget extends StatelessWidget {
  const sliderwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
    items: [
      GestureDetector(
        onTap: () {
        },
        child: Container(
          padding: EdgeInsets.only(left: 10, bottom: 24),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/candle.jpg'),
              fit: BoxFit.cover)
          ),
        ),
      ),
      
      GestureDetector(
        onTap: () {
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 24),
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/beach.jpg'),
              fit: BoxFit.cover)
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 24),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/rain-forest.jpg'),
              fit: BoxFit.cover)
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 24),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/robot.webp'),
              fit: BoxFit.cover)
          ),
        ),
      ),
    ], 
    options: CarouselOptions(
      enlargeCenterPage: true,
      autoPlay: true,
    ));
  }
}