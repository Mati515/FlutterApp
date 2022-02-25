import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carosal extends StatelessWidget {
  const Carosal({
    Key? key,
    required List<String> imagePaths,
  }) : imagePaths = imagePaths, super(key: key);

  final List<String> imagePaths;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(autoPlay:true,height: MediaQuery.of(context).size.height *0.25,),
        // carouselController: ,
        items: imagePaths.map((imagePath) {
          return Builder(builder: (context) {
            return Container(
              color: Colors.yellow,
                padding: const EdgeInsets.all(8),
                // margin: const EdgeInsets.symmetric(horizontal: 20),
                // color: Colors.limeAccent,
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height *0.25,
                child: Image.asset(imagePath));
          });
        }).toList());
  }
}