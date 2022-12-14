import 'package:flutter/material.dart';
import 'package:workiom/Home/model/model_home.dart';

class AppsRecent extends StatelessWidget {
  AppsRecentModel appsRecentModel;

  AppsRecent({Key? key, required this.appsRecentModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.09,
        child: Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width*0.1,
                child: appsRecentModel.img
            ),
            SizedBox(width: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  bottom: BorderSide(color: Color(0xFFD6D6D6),
                ),
              ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Text(appsRecentModel.title,style: TextStyle(
                      color: Color(0xFF0E0F12), fontWeight: FontWeight.w400,fontSize: 16),),
                  SizedBox(height: 5,),
                  Text(
                    appsRecentModel.text,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color(0xFF747474), fontWeight: FontWeight.w400,fontSize: 14),
                  ),
                  Spacer()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
