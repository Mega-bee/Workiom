import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workiom/Inbox/ui/Widgets/InboxWidget.dart';

import '../../../Home/ui/Widgets/workspace_bottomsheet.dart';
import '../../../utils/Images/Images.dart';
import '../../../utils/style/Colors.dart';
class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        automaticallyImplyLeading: false,
        title: Text("Inbox"),
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
      body: DefaultTabController(
    length: 3,
    child:Column(
        children:  [
          Row(
            children:  [
               Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  indicator: BoxDecoration(
                      color: Color(0xFFF4F4F4), borderRadius: BorderRadius.circular(20)
                  ),
                  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
                  labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  isScrollable: true,
                  tabs: const [
                    Tab(text: "New"),
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "Archived",
                    ),
                  ],
                ),
              ),
              Spacer(),
              TextButton(
                  onPressed: (){},
                  child: Text("Archive all",style: TextStyle(decoration: TextDecoration.underline,color: Color(0xFF4E86F7),fontSize: 14),))
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: InboxWidget(),
          )
        ],
      ),
    ));
  }
}
