import 'package:flutter/material.dart';
import 'package:workiom/Inbox/ui/Screen/InboxChat.dart';
import 'package:workiom/utils/Images/Images.dart';

class InboxWidget extends StatelessWidget {
  const InboxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return InboxChat();
          },
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 23, 12, 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(ImageAsset.PHOTO),
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
                Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Micheal mentioned you | favorite Links",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF0E0F12),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: TextSpan(
                              text: '● ',
                              style: TextStyle(
                                  color: Color(0xFF4E86F7),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Product dev / Issues",
                                  style: TextStyle(
                                    color: Color(0xFF555555),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "10:05",
                      style: TextStyle(
                          color: Color(0xFF747474),
                          fontWeight: FontWeight.w400,
                          fontSize: 10),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
