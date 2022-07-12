import 'package:f_project/screens/album_songs_screen.dart';
import 'package:f_project/screens/explore_screen.dart';
import 'package:f_project/screens/library_screen.dart';
import 'package:f_project/screens/search_screen.dart';
import 'package:f_project/screens/trending_screen.dart';
import 'package:f_project/themes.dart';
import 'package:f_project/widgets/bottom_music_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List<Widget> screens = const [
    ExploreScreen(),
    TrendingScreen(),
    SearchScreen(),
    LibraryScreen(),
    AlbumSongsScreen()
  ];
  void _onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BottomMusicBar(),
          BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: _onTap,
              elevation: 0,
              selectedItemColor: Colors.pink,
              unselectedItemColor: const Color(0xFF838383),
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedLabelStyle: GoogleFonts.poppins(
                  fontSize: 11, fontWeight: FontWeight.w400),
              unselectedLabelStyle: GoogleFonts.poppins(
                  fontSize: 11, fontWeight: FontWeight.w400),
              items: const [
                BottomNavigationBarItem(
                    label: 'EXPLORE',
                    icon: Icon(
                      Icons.music_note,
                    )),
                BottomNavigationBarItem(
                    label: 'TRENDING',
                    icon: Icon(
                      Icons.local_fire_department,
                    )),
                BottomNavigationBarItem(
                    label: 'SEARCH',
                    icon: Icon(
                      Icons.search,
                    )),
                BottomNavigationBarItem(
                    label: 'LIBRARY',
                    icon: Icon(
                      Icons.library_music,
                    )),
                BottomNavigationBarItem(
                    label: 'SETTINGS',
                    icon: Icon(
                      Icons.settings,
                    )),
              ])
        ],
      ),
    );
  }
}
