import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workiom/Home/ui/Widgets/workspace_widget.dart';

import '../../model/model_home.dart';
class WorkSpaceBottomSheet extends StatefulWidget {
  const WorkSpaceBottomSheet({Key? key}) : super(key: key);

  @override
  State<WorkSpaceBottomSheet> createState() => _WorkSpaceBottomSheetState();
}

class _WorkSpaceBottomSheetState extends State<WorkSpaceBottomSheet> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [
        SizedBox(
          height: 8,
        ),
        Container(
          height: 6,
          width: MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
              color: Color(0xFFD6D6D6),
              borderRadius: BorderRadiusDirectional.circular(10)),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
            child: Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text("Cancel",
                          style: TextStyle(
                              color: Color(0xFF555555),
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                          ))),
                  Spacer(),
                  Text("My Workspaces",style: TextStyle(color: Color(0xFF0E0F12),fontWeight: FontWeight.w500,fontSize: 14),),
                  Spacer(flex: 2)
                ])),
        PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: TextField(
              controller: _textEditingController,
              autofocus: false,
              onChanged: (searchText) {},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Theme.of(context).primaryColor)),
                filled: true,
                fillColor: Color(0xFFF4F4F4),
                hintText: 'Search',
                prefixIcon: Icon(Icons.search_rounded),
                // suffixIcon: const ImageIcon(
                //   AssetImage("assets/images/down,-filter,-list,-sort.png"),
                //   color: Color.fromRGBO(18, 108, 242, 1),
                // ),
                hintStyle: const TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Rubik'),
              ),
            ),
          ),
        ),
        Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: ListView.builder(
                    shrinkWrap: false,
                    physics: BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    itemCount: workSpaceList.length,
                    itemBuilder: (context, index) {
                      return WorkSpaceWidget(workSpaceModel: workSpaceList[index]);
                    },
                  ),
        )
      ],
    ));
  }
}
