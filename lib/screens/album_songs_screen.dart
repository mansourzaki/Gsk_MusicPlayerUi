import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class AlbumSongsScreen extends StatelessWidget {
  const AlbumSongsScreen({Key? key}) : super(key: key);
  final List<String> songs = const [
    'Eraser',
    'Castle on the Hill',
    'Dive',
    'Shape of you',
    'Perfect',
    'Galway Girl',
    'Happier',
    'New Man',
    'What Do I Know?',
    'Barcelona',
    'Supermarket Flowers'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                collapsedHeight: 100,
                expandedHeight: 300,
                floating: true,
                pinned: true,
                leading: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.arrow_back)),
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(50),
                    child: Transform.translate(
                        offset: const Offset(150, 28),
                        child: const CircleAvatar(
                          backgroundColor: Colors.pink,
                          minRadius: 30,
                          child: Icon(
                            Icons.play_arrow,
                            size: 30,
                            color: Colors.white,
                          ),
                        ))),
                flexibleSpace: Container(
                  padding: const EdgeInsets.all(18),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/ed.webp'),
                          fit: BoxFit.fitWidth)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Album',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Divide',
                        style: GoogleFonts.poppins(
                            fontSize: 34,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: ListView.builder(
            itemCount: songs.length,
            itemBuilder: (context, i) => ListTile(
              leading: Text('0$i',
                  style: GoogleFonts.poppins(
                      color: Colors.pink, fontWeight: FontWeight.w300)),
              title: Text(songs[i], style: GoogleFonts.poppins(fontSize: 18)),
              subtitle: const Text('Divide'),
            ),
          )),
    );
  }
}
