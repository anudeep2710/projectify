import 'package:flutter/material.dart';
import 'package:projectify/setscreens/oneScreen.dart';
import 'package:projectify/setscreens/threeScreen.dart';
import 'package:projectify/setscreens/twoScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class TutorialScreen extends StatefulWidget {
  TutorialScreen({Key? key}) : super(key: key);

  @override
  _TutorialScreenState createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              Screenone(),
              Screentwo(),
              Screenthree(),
            ],
          ),
          // Dot containers
          Positioned(
            left: 0,
            right: 0,
            bottom: 20, // Adjust this value as needed
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {
                      if (_pageController.page!.toInt() > 0) {
                        _pageController.previousPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    child: Text('Previous'),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {
                      if (_pageController.page!.toInt() < 2) {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    child: const Text('Next'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
