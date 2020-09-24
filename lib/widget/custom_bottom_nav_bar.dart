import 'package:flutter/material.dart';
import 'package:flutter_desktop_music_player/model/music.dart';

class CustomBottomNavBar extends StatelessWidget {
  final MusicList musicList = new MusicList();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              icon: Icon(
                Icons.volume_mute,
                size: 30,
              ),
              onPressed: () {}),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                image: DecorationImage(
                  image: NetworkImage(musicList.musicList[2].image),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text(musicList.musicList[2].title),
              Text(musicList.musicList[2].name)
            ],
          ),
          Spacer(),
          Text('01:00'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  height: 4,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50)),
                ),
                Container(
                  height: 4,
                  width: 300,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,
                          color: Colors.blueAccent,
                          offset: Offset(
                            0,
                            1,
                          ),
                        )
                      ],
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(50)),
                )
              ],
            ),
          ),
          Text('5:25'),
          SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
