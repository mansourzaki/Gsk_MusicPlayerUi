import 'package:f_project/models/song.dart';

import 'artist.dart';

class Album {
  String? name;
  Artist? artist;
  String? art;
  List<Song>? songslist;
  String? artUrl;
  Album({this.name, this.art, this.songslist, this.artUrl, this.artist});
}
