import 'package:flutter/material.dart';

import 'tabs/albums_tab.dart';
import 'tabs/comments_tab.dart';
import 'tabs/photos_tab.dart';
import 'tabs/posts_tab.dart';
import 'tabs/todos_tab.dart';
import 'tabs/users_tab.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          clipBehavior: Clip.antiAlias,
          title: const Text(
            'JSONPlaceholder',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xFF1A1A1A),
              letterSpacing: -0.5,
            ),
          ),
          centerTitle: false,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFFEEEEEE), width: 1),
                ),
              ),
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: const Color(0xFFAAAAAA),
                labelStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.5,
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 4),
                ),
                indicatorSize: TabBarIndicatorSize.label,
                dividerHeight: 0,
                tabAlignment: TabAlignment.start,
                tabs: const [
                  Tab(text: 'Posts'),
                  Tab(text: 'Comments'),
                  Tab(text: 'Albums'),
                  Tab(text: 'Photos'),
                  Tab(text: 'Todos'),
                  Tab(text: 'Users'),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            PostsTab(),
            CommentsTab(),
            AlbumsTab(),
            PhotosTab(),
            TodosTab(),
            UsersTab(),
          ],
        ),
      ),
    );
  }
}
