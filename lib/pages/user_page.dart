// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_ui/util/bubble_stories.dart';
import 'package:instagram_ui/util/user_posts.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          StorisWidget(),
          PostsWidget(),
        ],
      ),
    );
  }
}

class StorisWidget extends StatelessWidget {
  StorisWidget({Key? key}) : super(key: key);

  final List<String> people = [
    'Alex',
    'Obama',
    'Vasya',
    'Aleksey',
    'Vova',
    'Andrey',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: people.length,
        itemBuilder: (context, index) {
          return BubbleStories(text: people[index]);
        },
      ),
    );
  }
}

class PostsWidget extends StatelessWidget {
  PostsWidget({Key? key}) : super(key: key);
  final List<String> people = [
    'Alex',
    'Obama',
    'Vasya',
    'Aleksey',
    'Vova',
    'Andrey',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          return UserPosts(
            name: people[index],
          );
        },
      ),
    );
  }
}
