// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_ui/util/account_tab1.dart';
import 'package:instagram_ui/util/account_tab2.dart';
import 'package:instagram_ui/util/account_tab3.dart';
import 'package:instagram_ui/util/account_tab4.dart';
import 'package:instagram_ui/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Aleksey',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: const [
                  Icon(Icons.add),
                  SizedBox(width: 10),
                  Icon(Icons.menu),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '237',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '2340',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '364',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Aleksey',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'I make apps & games',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(child: Text('Edit Profile')),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(
                            child: Icon(
                          Icons.person_add,
                          size: 18,
                        )),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const [
                  BubbleStories(text: 'story 1'),
                  BubbleStories(text: 'story 1'),
                  BubbleStories(text: 'story 1'),
                  BubbleStories(text: 'story 1'),
                ],
              ),
            ),
            TabBar(
              tabs: const [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                  AccountTab4(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
