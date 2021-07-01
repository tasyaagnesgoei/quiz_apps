import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int selectedIndex = -1;
  int answerIndex = 2;
  bool isAnswered = false;
  @override
  Widget build(BuildContext context) {
    Widget option(int index, String text) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          width: 350,
          height: 60,
          decoration: BoxDecoration(
            color: isAnswered && answerIndex == index
                ? answerIndex != selectedIndex
                    ? Color(0xffE9A2AD)
                    : Colors.green
                : Colors.white,
            border: Border.all(
              color: isAnswered && answerIndex == index
                  ? answerIndex != selectedIndex
                      ? Colors.red
                      : Color(0xffC2CFD9)
                  : selectedIndex == index
                      ? Colors.green
                      : Colors.white,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    text,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                ),
                selectedIndex == index
                    ? Image.asset('assets/check.png')
                    : SizedBox()
              ],
            ),
          ),
        ),
      );
    }

    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 80.0,
          left: 30,
          right: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                '1/5',
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Manakah yang termasuk \ndari element HTML?',
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    }

    Widget button() {
      return GestureDetector(
        onTap: () {
          setState(() {
            isAnswered = true;
          });
        },
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xffB2ACFB),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(Icons.arrow_forward_rounded),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
          SizedBox(height: 30),
          option(0, '<html></html>'),
          SizedBox(height: 30),
          option(1, '<para></para>'),
          SizedBox(height: 30),
          option(2, '<tag></tag>'),
          SizedBox(height: 30),
          option(3, '<btn></btn>'),
          SizedBox(height: 80),
          selectedIndex == -1 ? SizedBox() : button(),
        ],
      ),
    );
  }
}
