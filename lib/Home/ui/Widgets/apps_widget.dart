import 'package:flutter/material.dart';
import 'package:workiom/Home/model/model_home.dart';
import 'package:workiom/Home/ui/Widgets/apps_recent_widget.dart';

class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: false,
          physics:
             NeverScrollableScrollPhysics(),
          itemCount: appsRecentList.length,
          itemBuilder: (context, index) {
            return Expanded(child: AppsRecent(appsRecentModel: appsRecentList[index]));
          }),
    );
  }
}
