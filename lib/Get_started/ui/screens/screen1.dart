import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:workiom/utils/Images/Images.dart';

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset(ImageAsset.img1, fit: BoxFit.contain),
          title: "Organize Your Data",
          body:
              "lorem ipsum dolor sit amet \n consectetur adipiscing elit. Amet\n est, diam misln, sedsed a rhonucs.",
          decoration: const PageDecoration(bodyAlignment: Alignment.center)),
      PageViewModel(
          image: Image.asset(ImageAsset.img2),
          title: "One work space for all ",
          body:
              "No matter what your field of work is \n Workiom will be ready in any case.",
          decoration: const PageDecoration(bodyAlignment: Alignment.center)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        showNextButton: false,
        showSkipButton: false,
        skip: Text("Skip"),
        done: Text("Continue "),
        onDone: () {},
      ),
      //floatingActionButton: TextButton(onPressed:() => null, child: Text('continue')),
    );
  }
}
