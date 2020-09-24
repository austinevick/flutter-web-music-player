import 'package:flutter/material.dart';
import 'package:flutter_desktop_music_player/model/music.dart';
import 'package:flutter_desktop_music_player/widget/custom_bottom_nav_bar.dart';

class CustomListView extends StatelessWidget {
  final MusicList musicList;

  const CustomListView({Key key, this.musicList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
            children: List.generate(5, (index) {
          final music = musicList.musicList[index];
          return Card(
              color: Colors.grey[900],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            music.image,
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('${index + 1}'),
                  SizedBox(
                    width: 35,
                  ),
                  Text(music.title),
                  Spacer(),
                  Text('12:00'),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    icon: Icon(Icons.more_horiz),
                    onPressed: () {},
                  )
                ],
              ));
        })),
      ),
    );
  }
}
