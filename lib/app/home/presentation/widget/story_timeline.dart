import 'package:flutter/material.dart';
import 'package:instagram_clone/app/story/presetation/widget/add_story.dart';
import 'package:instagram_clone/app/story/presetation/widget/story_view.dart';

class StoryTimeLine extends StatelessWidget {
  const StoryTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: const [
          AddStory(),
          StoryView(),
          StoryView(),
        ],
      ),
    );
  }
}
