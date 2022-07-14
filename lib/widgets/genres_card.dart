import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenresCard extends StatefulWidget {
  final String genre;
  bool isSelected;
  GenresCard({Key? key, required this.genre, this.isSelected = false})
      : super(key: key);

  @override
  State<GenresCard> createState() => _GenresCardState();
}

class _GenresCardState extends State<GenresCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: InkWell(
          onTap: (() {
            widget.isSelected = !widget.isSelected;
            setState(() {});
          }),
          child: Container(
            width: 150,
            decoration: BoxDecoration(
                color: !widget.isSelected ? Colors.grey[400] : Colors.pink[400],
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Text(
                widget.genre,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: !widget.isSelected ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
        ));
  }
}
