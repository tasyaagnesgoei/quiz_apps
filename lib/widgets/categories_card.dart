import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_apps/pages/quiz_page.dart';

class CategoriesCard extends StatelessWidget {
  final String imageUrl;
  final String text;

  CategoriesCard({required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          new MaterialPageRoute(
            builder: (context) => new QuizPage(),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 150,
        color: Color(
          0xffDEE6EE,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            children: [
              Image.asset(
                imageUrl,
                width: 60,
              ),
              SizedBox(height: 20),
              Text(
                text,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
