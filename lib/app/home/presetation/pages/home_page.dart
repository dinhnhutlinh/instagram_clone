import 'package:flutter/material.dart';
import 'package:instagram_clone/app/home/presetation/widget/app_bottom_nav.dart';
import 'package:instagram_clone/app/home/presetation/widget/post_timeline.dart';
import 'package:instagram_clone/app/home/presetation/widget/story_timeline.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Instagram'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          const StoryTimeLine(),
          const Divider(),
          PostTimeLine(),
        ],
      ),
      bottomNavigationBar: AppBottomNav(
        onTap: (index) {},
      ),
    );
  }
}
