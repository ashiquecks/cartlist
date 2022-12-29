import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cartlist/RESOURCE/assetFile.dart';
import 'package:cartlist/WIDGETS/cardWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List banner = [banner1, banner1, banner1];
  @override
  Widget build(BuildContext context) {
    final widgetSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageSlideshow(
            width: double.infinity,
            height: 200,
            initialPage: 0,
            indicatorColor: Colors.transparent,
            indicatorBackgroundColor: Colors.transparent,
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              for (var i = 0; i < banner.length; i++)
                bannerCard(bannerImage: banner[i], context: context)
            ],
          ),
          labelCard(),
          SizedBox(
            height: 190,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: ((context, index) {
                return stockCard(context: context);
              }),
            ),
          ),
          labelCard(),
          // Padding(
          //   padding: const EdgeInsets.only(left: 10, right: 10),
          //   child: GridView.builder(
          //     shrinkWrap: true,
          //     physics: const NeverScrollableScrollPhysics(),
          //     itemCount: 9,
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       childAspectRatio: MediaQuery.of(context).size.width /
          //           (MediaQuery.of(context).size.height / 1.4),
          //       mainAxisExtent: 125,
          //       crossAxisCount: 3,
          //       crossAxisSpacing: 5,
          //       mainAxisSpacing: 5,
          //     ),
          //     itemBuilder: (BuildContext context, int index) {
          //       return gridCard(buttonAction: () {});
          //     },
          //   ),
          // ),
          ImageSlideshow(
            width: double.infinity,
            height: 200,
            initialPage: 0,
            indicatorColor: Colors.transparent,
            indicatorBackgroundColor: Colors.transparent,
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              for (var i = 0; i < banner.length; i++)
                bannerCard(bannerImage: banner[i], context: context)
            ],
          ),
        ],
      ),
    );
  }
}
