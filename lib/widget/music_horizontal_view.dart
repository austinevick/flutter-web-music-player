import 'package:flutter/material.dart';

import 'package:flutter_desktop_music_player/model/music.dart';

class MusicHorizontalListView extends StatelessWidget {
  final MusicList musicList;
  const MusicHorizontalListView({
    Key key,
    this.musicList,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: musicList.musicList.length,
        itemBuilder: (ctx, i) {
          final music = musicList.musicList[i];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            music.image,
                          ))),
                ),
              ),
              Expanded(child: Text(music.name)),
              Expanded(
                child: Text(
                  music.title,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          );
        });
  }
}
