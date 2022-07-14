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
  final List<String> grid3 = const [
    'https://i.pinimg.com/736x/b5/0f/67/b50f67378a16477a1861e3040f40cd22--rap-albums-hip-hop-albums.jpg',
    'https://media.npr.org/assets/img/2017/12/27/kendrick-lamar_sq-d29d54d4946286c6bcc2f05bc19c440cdd11d7d5.jpg',
    'https://mir-s3-cdn-cf.behance.net/project_modules/1400/e9eab2100610977.5f4ff5c7e38da.jpg',
    'https://i.pinimg.com/736x/b4/25/46/b42546369b3e6f78704efbb51d25dc07.jpg'
  ];
  final List<String> grid4 = const [
    'https://ocdn.hiphopdx.com/NCannon_WPPM_Cover_640.jpg',
    'https://media.pitchfork.com/photos/5929c021abf31b7dc71563f8/1:1/w_320/5db41c69.jpg',
    'https://i.pinimg.com/474x/61/b7/53/61b7538547403ab7f4666554fe77161b.jpg',
    'https://marketplace.canva.com/EAEzT6rGz1Q/1/0/1600w/canva-next-party-modern-music-album-cover-art-wYQuTcJ1ju0.jpg'
  ];
   final List<String> grid5 = const [
    'https://i.scdn.co/image/ab67706c0000bebbda08815c139e8420005ba09b',
    'http://c.saavncdn.com/680/Gym-Playlist-Energetic-Tracks-For-Workout-Fitness--English-2018-20180602225519-500x500.jpg',
    'https://www.music-bazaar.com/album-images/vol31/1153/1153235/3020512-big/No-Pain-No-Gain-Workout-Music-Vol-4-cover.jpg',
    'https://i.scdn.co/image/ab67616d00001e020d8e803b285d771054675b3d'
  ];
  final List<String> grid6 = const [
    'https://media.pitchfork.com/photos/5929ab83c0084474cd0c13ad/1:1/w_320/efb711c7.jpg',
    'https://i.discogs.com/y0JtJ4eni_EcD0Us9PYg06GCOV9AwPeb8fjJVw6KwCk/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExMTQ5/OTkyLTE1MTA5MDMw/NTYtODc2Mi5qcGVn.jpeg',
    'https://cdns-images.dzcdn.net/images/cover/64f43e4d936f8105ecc7b1b741d02f7f/264x264.jpg',
    'data:image/jpeg;base64,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'
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
              AlbumsCollapse('Fav Hip-Hop', grid3),
              AlbumsCollapse('Party Music', grid4),
              AlbumsCollapse('Workout Songs', grid5),
              AlbumsCollapse('90\'s Music', grid6),
              AlbumsCollapse('90\'s Music', grid6),
              AlbumsCollapse('90\'s Music', grid6),
            ]),
      ),
    );
  }

  Widget AlbumsCollapse(String title, List<String> list) {
    return Stack(children: [
      ShaderMask(
        shaderCallback: (rect) {
          return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
          ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
        },
        blendMode: BlendMode.colorBurn,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
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
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
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
