import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.topCenter,
          children: [
            StoryView(
              controller: controller,
              storyItems: [
                StoryItem.text(
                  title: 'Hello World',
                  backgroundColor: Colors.red,
                ),
                StoryItem.pageImage(
                  url: 'https://picsum.photos/200/300',
                  controller: controller,
                ),
              ],
              onVerticalSwipeComplete: (p0) {
                if (p0! == Direction.down) {
                  print('up');
                } else {
                  Navigator.of(context).pop();
                }
              },
              onComplete: () {},
              repeat: false,
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: UserStory(),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: BottomStory(),
            ),
          ],
        ),
      ),
    );
  }
}

class UserStory extends StatelessWidget {
  const UserStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
      child: Row(
        children: const [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage('https://picsum.photos/200'),
          ),
          SizedBox(width: 16),
          Text('username'),
          Spacer(),
          Icon(Icons.more_vert),
        ],
      ),
    );
  }
}

class BottomStory extends StatelessWidget {
  const BottomStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
      child: Row(
        children: const [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                focusColor: Colors.white,
                hintText: 'Add a Message...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          Icon(Icons.send),
          SizedBox(width: 16),
          Icon(Icons.favorite_border),
        ],
      ),
    );
  }
}
