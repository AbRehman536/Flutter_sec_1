import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'models/onBoarding.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  PageController controller = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(title: 'First Slide', image: 'assets/images/download.jpg'),
    OnBoardingModel(title: 'Second Slide', image: 'assets/images/download.jpg'),
    OnBoardingModel(title: 'Third Slide', image: 'assets/images/download.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View Demo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: controller,
                itemCount: onBoardingList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(onBoardingList[i].image.toString()),
                      Text(onBoardingList[i].title.toString(),style: TextStyle(fontSize: 30),)
                    ],
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: onBoardingList.length,
              effect: JumpingDotEffect(), // your preferred effect
              onDotClicked: (index) {}),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}