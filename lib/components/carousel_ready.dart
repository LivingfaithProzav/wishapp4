import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget{

final List<String> _carousel = [
    'assets/images/property1.jpg',
    'assets/images/property6.jpg',
    'assets/images/property7.jpg',
    'assets/images/property8.jpg',
    'assets/images/property9.jpg',
    'assets/images/property10.jpg',
    'assets/images/property12.jpg',

  ]; //ini

  @override
  Widget build(BuildContext context){
    return CarouselSlider(
      height: 400.0,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      pauseAutoPlayOnTouch: Duration(seconds: 10),
      enlargeCenterPage: true,
      items: _carousel.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.0)
                    ],
                ),
                child: Image.asset(i)
            );
          },
        );
      }).toList(),
    );
  }

}
