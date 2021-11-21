import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SlidePage extends StatefulWidget {
  const SlidePage({Key? key}) : super(key: key);

  @override
  _SlidePageState createState() => _SlidePageState();
}

class _SlidePageState extends State<SlidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slide Image'),),
      body:CarouselSlider(
        items: [
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage('assets/cpc-logo.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage('assets/cpc-logo.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage('assets/cpc-logo.png'),
              ),
            ),
          ),
        ],
        options: CarouselOptions(
autoPlayCurve: Curves.fastOutSlowIn,
          autoPlay: true,
          aspectRatio: 16/9,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          autoPlayAnimationDuration: Duration(seconds: 3),
          autoPlayInterval: Duration(seconds: 2),
height: 200,
          viewportFraction: 0.8,
        ),
      ) ,
    );
  }
}
