import 'package:flutter/material.dart';
import 'package:instagram_clone/app/home/presentation/widget/post_timeline.dart';
import 'package:instagram_clone/app/home/presentation/widget/story_timeline.dart';

class NewFeelPage extends StatelessWidget {
  const NewFeelPage({super.key});

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
        children: const [
          StoryTimeLine(),
          Divider(),
          PostTimeLine(),
        ],
      ),
    );
  }
}
