import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/genres_card.dart';

List<String> genres = const ['Pop', 'Hip-Hop', 'Jazz', 'Electronic', 'Folk'];
Color pink = Color(0xff2D55);
List<bool> bools = [true, false, false, false, false];
Widget buildGenresListView(BuildContext context, double height) {
  return SizedBox(
    height: height,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, i) => GenresCard(
        genre: genres[i],
        isSelected: bools[i],
      ),
    ),
  );
}

Widget buildOneTitleListView(BuildContext context,
    {required String url,
    required String name,
    int count = 10,
    double? height,
    double? height2}) {
  return SizedBox(
    height: height ?? MediaQuery.of(context).size.height * 0.2,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: count,
      itemBuilder: (context, i) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                url,
                fit: BoxFit.cover,
                height: height2 ?? MediaQuery.of(context).size.height * 0.15,
              ),
            ),
            SizedBox(height: 5),
            Text(
              name,
              style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    ),
  );
}
