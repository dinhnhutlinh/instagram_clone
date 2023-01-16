import 'package:flutter/material.dart';

class AddStory extends StatelessWidget {
  const AddStory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(45),
          onTap: () {},
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
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: Icon(
                        Icons.add_circle_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Your Story',
                maxLines: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
