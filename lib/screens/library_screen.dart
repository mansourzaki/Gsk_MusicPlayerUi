import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);
  final List<String> grid1 = const [
    'https://is4-ssl.mzstatic.com/image/thumb/Music125/v4/c9/c2/1f/c9c21f12-d4e9-124e-8a88-e8ec8442033b/19UMGIM88313.rgb.jpg/1200x1200bf-60.jpg',
    'https://ia802808.us.archive.org/17/items/mbid-01fee1ed-1a97-476e-8aba-e32f56ae6f03/mbid-01fee1ed-1a97-476e-8aba-e32f56ae6f03-25174081018_thumb500.jpg',
    'https://upload.wikimedia.org/wikipedia/en/9/98/Havana_%28featuring_Young_Thug%29_%28Official_Single_Cover%29_by_Camila_Cabello.png',
    'https://i1.sndcdn.com/artworks-000140763817-23vcxe-t500x500.jpg'
  ];
  final List<String> grid2 = const [
    'https://99designs-blog.imgix.net/blog/wp-content/uploads/2018/01/attachment_77083646.png?auto=format&q=60&fit=max&w=930',
    'https://coverart.xyz/storage/64/2454369-1570728539101-7603d182f4c11.jpg',
    'https://mir-s3-cdn-cf.behance.net/project_modules/1400/e9eab2100610977.5f4ff5c7e38da.jpg',
    'https://spotlight.radiopublic.com/images/thumbnail?url=https%3A%2F%2Fcontent.production.cdn.art19.com%2Fimages%2F20%2Ff7%2F10%2F3d%2F20f7103d-0569-4a12-8b99-97adfa839b21%2Fa6ef51b2982256d97195284c99a012f6890a40d50d3075ce8342ddca6ba995834398497da60f127cdd0419f0c3c7683c2bdaf421f40f553e589e270018e64cbe.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        title: Text(
          'Library',
          style: AppTheme.lightTextTheme.headline1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            children: [
              AlbumsCollapse('Liked Songs', grid1),
              AlbumsCollapse('Liked Podcasts', grid2),
              AlbumsCollapse('Fav Hip-Hop', grid1),
              AlbumsCollapse('Party Music', grid1),
              AlbumsCollapse('Workout Songs', grid1),
              AlbumsCollapse('90\'s Music', grid1),
            ]),
      ),
    );
  }

  Widget AlbumsCollapse(String title, List<String> list) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GridView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            CachedNetworkImage(
              imageUrl: list[0],
            ),
            CachedNetworkImage(
              imageUrl: list[1],
            ),
            CachedNetworkImage(
              imageUrl: list[2],
            ),
            CachedNetworkImage(
              imageUrl: list[3],
            ),
          ],
        ),
      ),
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      )
    ]);
  }
}
