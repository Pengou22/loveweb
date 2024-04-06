// import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'Image.dart';

// class AnimatedImage extends AnimatedWidget{
//   const AnimatedImage({
//     Key? key,
//     required Animation<double> animation,
//   }):super(key: key,listenable: animation);

//   @override
/////////
// }

class LovePage extends StatefulWidget {
  @override
  _LovePageState createState() => _LovePageState();
}

class _LovePageState extends State<LovePage> {
  // List<String> imgList = [
  //   'images/1.jpg',
  //   'images/2.jpg',
  //   'images/3.jpg',
  //   'images/4.jpg',
  //   'images/5.jpg',
  //   'images/6.jpg',
  //   'images/7.jpg',
  //   'images/8.jpg',
  // ];

  @override
  Widget build(BuildContext context) {
    var MySwiperWidget1 = Swiper(
      layout: SwiperLayout.STACK,
      itemBuilder: (BuildContext context, int index) {
        //每次循环遍历时，将i赋值给index
        return new Image.network(
          imgList32[index],
          fit: BoxFit.fill,
        );
      },
      // viewportFraction: 0.7,
      // scale: 10,
      itemWidth: 900,
      itemHeight: 600,
      itemCount: imgList32.length,
      //指示器
      pagination: new SwiperPagination(),
      control: new SwiperControl(
        size: 150,
        // color:
      ),
    );

    var MySwiperWidget2 = Swiper(
      layout: SwiperLayout.TINDER,
      itemBuilder: (BuildContext context, int index) {
        //每次循环遍历时，将i赋值给index
        return new Image.network(
          imgList23[index],
          fit: BoxFit.fill,
        );
      },
      itemWidth: 600.0,
      itemHeight: 900.0,
      control: new SwiperControl(
        size: 150,
      ),
      itemCount: imgList23.length,
      //指示器
      pagination: new SwiperPagination(),
    );

    var MySwiperWidget3 = Swiper(
      itemBuilder: (BuildContext context, int index) {
        return new Image.network(
          imgListmisc[index],
          fit: BoxFit.cover,
        );
      },
      control: new SwiperControl(
        size: 150,
      ),
      itemCount: imgListmisc.length,
      viewportFraction: 0.6,
      scale: 0.7,
    );

    // return MySwiperWidget;
    return Scaffold(
        body: Container(
            width: double.infinity, // 设置宽度为屏幕宽度
            height: double.infinity, // 设置高度为屏幕高度
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background/background-2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: [
                Container(
                  height: 600,
                  child: MySwiperWidget3,
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 600,
                  child: MySwiperWidget1,
                ),
                Container(
                  height: 600,
                  child: MySwiperWidget2,
                )
              ],
            )));
  }

  // List<String> images = [
  //   'images/love1.jpg',
  //   'images/love2.jpg',
  //   'images/love3.jpg',
  // ];
  // int currentIndex = 0;

  // void changeImage(int newIndex) {
  //   setState(() {
  //     currentIndex = newIndex;
  //   });
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Stack(
  //       children: [
  //         Container(
  //           decoration: BoxDecoration(
  //             image: DecorationImage(
  //               image: AssetImage(images[currentIndex]),
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //           child: BackdropFilter(
  //             filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
  //             child: Container(
  //               color: Colors.black.withOpacity(0.5),
  //             ),
  //           ),
  //         ),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             GestureDetector(
  //               onTap: () {
  //                 if (currentIndex > 0) {
  //                   changeImage(currentIndex - 1);
  //                 }
  //               },
  //               child: Container(
  //                 padding: EdgeInsets.all(8),
  //                 child: Icon(Icons.arrow_back, color: Colors.white),
  //               ),
  //             ),
  //             GestureDetector(
  //               onTap: () {
  //                 if (currentIndex < images.length - 1) {
  //                   changeImage(currentIndex + 1);
  //                 }
  //               },
  //               child: Container(
  //                 padding: EdgeInsets.all(8),
  //                 child: Icon(Icons.arrow_forward, color: Colors.white),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
