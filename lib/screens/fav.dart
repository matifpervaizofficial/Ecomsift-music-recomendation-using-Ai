import 'package:flutter/material.dart';
import '../models/song_model.dart';
import '../widgets/song_card.dart';

class FavoritePage extends StatelessWidget {
  final List<Song> favoriteSongs;

  const FavoritePage({Key? key, required this.favoriteSongs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Favorite Songs'),
      ),
      body: ListView.builder(
        itemCount: favoriteSongs.length,
        itemBuilder: (context, index) {
          return SongCard(song: favoriteSongs[index]);
        },
      ),
    );
  }
}
