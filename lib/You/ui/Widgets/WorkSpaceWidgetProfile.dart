import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workiom/Home/model/model_home.dart';

class WorkSpaceWidgetProfile extends StatelessWidget {
  WorkSpaceModel workSpaceModel;

  WorkSpaceWidgetProfile ({Key? key, required this.workSpaceModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 15, 0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.11,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.075,
                  child: workSpaceModel.img),
              SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    workSpaceModel.title,
                    style: TextStyle(
                        color: Color(0xFF0E0F12),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    workSpaceModel.email,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color(0xFF747474),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  Spacer()
                ],
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded,color: Color(0xFFB5B5B5),)
            ],
          ),
      ),
    );
  }
}
