import 'package:f_project/constants.dart';
import 'package:f_project/widgets/song_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> songs = const [
    {
      'name': 'Believer',
      'artist': 'Imagine Dragons',
      'url': 'assets/images/dragons.jpg'
    },
    {'name': 'I\'m a Believer ', 'artist': 'Various Artists', 'url': null},
    {'name': 'True Believers ', 'artist': 'Eric Bogle', 'url': null}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        title: TextField(
          decoration: InputDecoration(
              fillColor: Colors.black.withOpacity(0.1),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              filled: true,
              contentPadding: const EdgeInsets.all(18),
              hintText: 'Search for songs, albums, podcasts',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none)),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  'Search history',
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  'SHOW ALL',
                  style: GoogleFonts.poppins(fontSize: 13, color: Colors.pink),
                ),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios,size: 12,color: Colors.pink,)
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: songs.length,
              itemBuilder: (context, i) => SongListTile(
                  songName: songs[i]['name'],
                  artisit: songs[i]['artist'],
                  url: songs[i]['url'])),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Albums',
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          buildOneTitleListView(context,
              url: 'assets/images/dragons.jpg',
              name: 'Believer',
              count: 2,
              height: 200,
              height2: 170)
        ],
      )),
    );
  }
}
