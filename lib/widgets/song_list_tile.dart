import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SongListTile extends StatelessWidget {
  final String songName;
  final String artisit;
  final String? url;
  const SongListTile(
      {Key? key,
      required this.songName,
      required this.artisit,
      required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: url == null
            ? Image.asset('assets/images/song.png')
            : Image.asset(url!),
      ),
      title: Text(
        songName,
        style: GoogleFonts.poppins(fontSize: 20, color: Colors.pink),
      ),
      subtitle: Text(
        artisit,
        style: GoogleFonts.poppins(),
      ),
      trailing: Icon(Icons.more_vert),
    );
  }
}
