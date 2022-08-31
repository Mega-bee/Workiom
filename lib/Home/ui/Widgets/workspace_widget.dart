import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workiom/Home/model/model_home.dart';

class WorkSpaceWidget extends StatelessWidget {
  WorkSpaceModel workSpaceModel;

  WorkSpaceWidget({Key? key, required this.workSpaceModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.09,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 0.5,
          child: Row(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: workSpaceModel.img),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
