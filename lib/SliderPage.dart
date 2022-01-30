

import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage>{


final urlImages=[
  'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg',
  'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg',
  'https://www.teahub.io/photos/full/79-798498_hd-wallpapers-nature-flowers-free-download.jpg',
  'https://w0.peakpx.com/wallpaper/931/845/HD-wallpaper-flowers-purple-flowers-beautiful-nature-thumbnail.jpg',

];

  @override
  @mustCallSuper
  initState(){
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          body: Center(
              child: CarouselSlider.builder(
                itemCount: urlImages.length,
                options: CarouselOptions(
                    height: 400,
                   // viewportFraction: 1,
                  //  autoPlay: true,
                      //enableInfiniteScroll: false,
                       pageSnapping: false,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    //reverse: true,
                    autoPlayInterval: const Duration(seconds: 2),
                ),
                itemBuilder: (context, index,realIndex){
                    final urlImage=urlImages[index];
                  return buildImage(urlImage,index);
                },


              ),

          )


      ),
    );
  }

 Widget buildImage(String urlImage, int index)=>Container(
   margin: const EdgeInsets.symmetric(horizontal: 5),
   color: Colors.grey,
   child: Image.network(urlImage,
     fit: BoxFit.cover,
   ),
 );
}
