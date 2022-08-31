import 'package:flutter/material.dart';

import '../../../utils/style/Colors.dart';

class Apps extends StatefulWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  State<Apps> createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Card(
            elevation: 0,
            color: PrimaryColor,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Apps",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Rubik'),
                    ),
                    Spacer(),
                  ],
                ),
                TabBar(
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 4.0,color:Color(0xFF4E86F7) ),
                      insets: EdgeInsets.symmetric(horizontal:0),
                  ),
                  isScrollable: true,
                  tabs: [
                    Tab(text: "Recent"),
                    Tab(
                      text: "All",
                    )
                  ],
                ),
                // TabBarView(
                //   children: [
                //     Icon(Icons.directions_car),
                //     Icon(Icons.directions_car),
                //   ],
                // ),
                // Container(
                //   height: MediaQuery.of(context).size.height*0.3,
                //   child: ListView.builder(
                //     shrinkWrap: false,
                //     physics: BouncingScrollPhysics(
                //         parent: AlwaysScrollableScrollPhysics()),
                //     itemCount: 1,
                //     itemBuilder: (context, index) {
                //       return Container();
                //     },
                //   ),
                // )
              ],
            )));
  }
}
