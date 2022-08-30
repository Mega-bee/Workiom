import 'dart:html';

import 'package:flutter/material.dart';
class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: Container(
        height: MediaQuery.of(context).size.height*0.3,
        child: Column(
          children: [
            Row(
              children: [
                Text("Apps",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,fontFamily: 'Rubik'),),
                Spacer(),
                TextButton(
                    onPressed: (){}, child: Text("View all",style: TextStyle(color: Color(0xFF747474),fontFamily: 'Rubik',fontSize: 14),))
              ],
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: false,
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container();
                },
              ),
            )
          ],
        )),
    );
  }
}
