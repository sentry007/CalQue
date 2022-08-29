import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final double textSize;
  final Function callback;

  const CalcButton({
    Key? key,
    required this.text,
    this.textSize = 28,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: SizedBox(
        width: 74,
        height: 74,
        child: TextButton(
          style: TextButton.styleFrom(
              primary: Color.fromARGB(255, 106, 13, 173),
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              side: BorderSide(color: Color.fromARGB(125, 21, 21, 21), width: 2.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24))),
          onPressed: () {
            callback(text);
          },
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
