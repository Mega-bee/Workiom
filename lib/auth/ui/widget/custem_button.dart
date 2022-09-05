import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.bgColor,
    required this.text,
    required this.textColor,
    required this.loading,
    required this.buttonTab,
    required this.coloricon,


  });

  final Color bgColor;
  final Color textColor;
  final Color coloricon;
  final String text;

  final bool loading;
  final VoidCallback buttonTab;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Material(
            color: bgColor,
            borderRadius: BorderRadius.circular(12),
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: (){
                buttonTab();
              },
              child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SizedBox(
                    height: 30,

                    child: loading
                        ? Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            LoadingIndicator(

                              indicatorType:
                              Indicator.circleStrokeSpin,

                              colors: [Colors.white],
                            ),
                            Text(
                              '$text',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: textColor,
                                  fontSize: 18),
                            ),
                            Icon( Icons.subdirectory_arrow_left, color: Colors.white,
                              size: 20,

                            )
                          ],
                        )
                        : Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Spacer(

                            ),
                            Text(
                              '$text',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.w600,
                                  color: textColor,
                                  fontSize: 14),
                            ),
                            Spacer(

                            ),
                    Container(

height: 25,width: 35,
                      child: Card(color: coloricon,
                     elevation: 0,

                        child: Center(
                          child: Icon( Icons.subdirectory_arrow_left_sharp, color: Colors.white70,
                            size: 12,),
                        ),
                      ),
                    )
                          ],
                        ),
                  )),
            ),
          ),
        )
      ],
    );
  }
}