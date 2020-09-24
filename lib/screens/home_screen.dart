import 'package:flutter/material.dart';
import 'package:flutter_desktop_music_player/model/music.dart';
import 'package:flutter_desktop_music_player/widget/custom_appbar.dart';
import 'package:flutter_desktop_music_player/widget/custom_bottom_nav_bar.dart';
import 'package:flutter_desktop_music_player/widget/custom_grid_view.dart';
import 'package:flutter_desktop_music_player/widget/custom_list_tile.dart';
import 'package:flutter_desktop_music_player/widget/custom_list_view.dart';
import 'package:flutter_desktop_music_player/widget/music_horizontal_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final MusicList musicList = new MusicList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.black,
              child: CustomListTile(),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              color: Colors.black54,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(),
                    Text('Explore new'),
                    Expanded(
                        child: MusicHorizontalListView(
                      musicList: musicList,
                    )),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Popular'),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Mood'),
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: CustomListView(
                          musicList: musicList,
                        )),
                        Expanded(child: CustomGridView())
                      ],
                    ),
                    CustomBottomNavBar()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
