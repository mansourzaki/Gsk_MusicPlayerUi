import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenresCard extends StatelessWidget {
  final String genre;
  const GenresCard({
    Key? key,
    required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: 150,
          decoration: BoxDecoration(
              color: Colors.pink[400], borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text(
              genre,
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
