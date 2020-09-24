import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              onPressed: () {}),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  hintText: 'Search music'),
            ),
          ),
          FlatButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
