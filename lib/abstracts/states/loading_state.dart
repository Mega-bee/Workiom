import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:workiom/abstracts/states/state.dart';

import '../../utils/style/colors.dart';

class LoadingState extends States {

  @override
  Widget getUI(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.discreteCircle(
        color: Colors.blue,size: 20,secondRingColor: Colors.black,thirdRingColor: Colors.white
        )
    );
    // child: LoadingAnimationWidget.hexagonDots(
    //    color:Colors.black, size: 120)
    // );
  }

  @override
  Widget getAlert(BuildContext context) {
    // TODO: implement getAlert
    throw UnimplementedError();
  }
}

