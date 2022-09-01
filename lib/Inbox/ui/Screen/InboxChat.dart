import 'package:flutter/material.dart';
import 'package:workiom/utils/Images/Images.dart';
import 'package:workiom/utils/style/Colors.dart';
class InboxChat extends StatefulWidget {
  const InboxChat({Key? key}) : super(key: key);

  @override
  State<InboxChat> createState() => _InboxChatState();
}

class _InboxChatState extends State<InboxChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
    body:Column(
      children: [
        Card(
          color: PrimaryColor,
          elevation: 0,
          child: Row(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
            Row(
            children: [
            Column(
              children: [
                Image.asset(ImageAsset.PHOTO),
                VerticalDivider(color: Colors.black,)
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Michael",
                  style: TextStyle(
                      color: Color(0xFF0E0F12),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 7,
                ),
                RichText(
                  text: TextSpan(
                      text: 'Hello ',
                      style: TextStyle(
                          color: Color(0xFF0E0F12),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                          text: "@Jacob ",
                          style: TextStyle(
                            color: Color(0xFF4E86F7),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: ", Are you availble today?",
                          style: TextStyle(
                              color: Color(0xFF0E0F12),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Show more 5 replies",
                  style: TextStyle(
                      color: Color(0xFF747474),
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
          ),
          ]
            ),
          ],
          ),
        ),
        Card(
          color: PrimaryColor,
          elevation: 0,
          child: Row(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(ImageAsset.PHOTO),
                            Divider()
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jacob",
                              style: TextStyle(
                                  color: Color(0xFF0E0F12),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            RichText(
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                  text: 'Hello ',
                                  style: TextStyle(
                                      color: Color(0xFF0E0F12),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "@Michael ",
                                      style: TextStyle(
                                        color: Color(0xFF4E86F7),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '''Hi, how it’s going? we can meet today
                                     ''',
                                      style: TextStyle(
                                          color: Color(0xFF0E0F12),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                  ]),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ]
              ),
            ],
          ),
        ),
        Spacer(),
        Row(
          children: [
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.reply_rounded,color: Color(0xFF555555),)),
            Text("Reply",style: TextStyle(color: Color(0xFF555555),),),
            IconButton(onPressed: (){}, icon: Icon(Icons.add_reaction,color: Color(0xFF555555),)),
            Text("Add Reaction",style: TextStyle(color: Color(0xFF555555))),
            IconButton(onPressed: (){}, icon: Icon(Icons.check_box_outlined,color: Color(0xFF555555),)),
            Text("Resolve",style: TextStyle(color: Color(0xFF555555))),
          ],
        )
      ],
    ));
  }
}
