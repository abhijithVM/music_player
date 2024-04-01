import 'package:flutter/material.dart';
import 'package:musicplayer/model/music_model.dart';

class MusicCard extends StatelessWidget {
  final MusicListModel music;
  const MusicCard({
    super.key,
    required this.music,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(music.artistName ?? ""),
    );
  }
}
