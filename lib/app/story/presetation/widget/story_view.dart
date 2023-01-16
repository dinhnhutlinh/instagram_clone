import 'package:flutter/material.dart';
import 'package:instagram_clone/app/story/presetation/pages/story_page.dart';

class StoryView extends StatelessWidget {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(45),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const StoryPage(),
              ),
            );
          },
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: const [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://picsum.photos/200/300'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              const Text('Your Story', maxLines: 1),
            ],
          ),
        ),
      ),
    );
  }
}
