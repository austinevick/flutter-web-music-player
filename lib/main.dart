import 'package:flutter/material.dart';
import 'package:flutter_desktop_music_player/screens/home_screen.dart';
import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Music Player',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
