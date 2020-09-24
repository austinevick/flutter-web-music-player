import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('App'),
          ListTile(
            leading: Icon(Icons.explore),
            title: Text('Explore'),
          ),
          ListTile(
            leading: Icon(Icons.add_comment),
            title: Text('Suggest'),
          ),
          ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text('Top Chart'),
          ),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text('New stuff'),
          ),
          SizedBox(height: 20),
          Text('Popular'),
          ListTile(
            leading: Icon(Icons.add_comment),
            title: Text('Suggest'),
          ),
          ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text('Top Chart'),
          ),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text('New stuff'),
          ),
          Spacer(),
          ListTile(
            leading: Icon(Icons.playlist_add),
            title: Text('Create playlist'),
          ),
          Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.skip_previous),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.skip_next),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
