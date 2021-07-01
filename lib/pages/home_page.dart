import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_apps/widgets/categories_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 90.0,
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                'Quizy',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                top: 30,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoriesCard(
                        imageUrl: 'assets/award.png',
                        text: 'Design',
                      ),
                      SizedBox(width: 30),
                      CategoriesCard(
                        imageUrl: 'assets/award.png',
                        text: 'Design',
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      CategoriesCard(
                        imageUrl: 'assets/award.png',
                        text: 'Design',
                      ),
                      SizedBox(width: 30),
                      CategoriesCard(
                        imageUrl: 'assets/award.png',
                        text: 'Design',
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      CategoriesCard(
                        imageUrl: 'assets/award.png',
                        text: 'Design',
                      ),
                      SizedBox(width: 30),
                      CategoriesCard(
                        imageUrl: 'assets/award.png',
                        text: 'Design',
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
