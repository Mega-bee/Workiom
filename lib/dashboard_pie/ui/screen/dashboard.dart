import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Home/ui/Widgets/workspace_bottomsheet.dart';
import '../../../utils/Images/Images.dart';
import '../../../utils/colors/colors.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text("DashBoard"),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 32,
            color: Color(0xFF0E0F12)),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return WorkSpaceBottomSheet();
                    });
              },
              icon: Image.asset(ImageAsset.WORKSPACE))
        ],
      ),
    );
  }
}
