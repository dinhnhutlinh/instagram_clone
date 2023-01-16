import 'package:flutter/material.dart';

class ReelInfo extends StatelessWidget {
  const ReelInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Expanded(
              child: UserReels(),
            ),
            SizedBox(width: 16),
            ReactBar(),
          ],
        ),
      ),
    );
  }
}

class UserReels extends StatelessWidget {
  const UserReels({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: const [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),
            SizedBox(width: 16),
            Text('username'),
            SizedBox(width: 16),
            Text('Follow'),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: const [
            Text('Caption'),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: const [
            Text('Hello World'),
            SizedBox(width: 16),
            Icon(Icons.music_note_outlined),
          ],
        ),
      ],
    );
  }
}

class ReactBar extends StatelessWidget {
  const ReactBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(Icons.favorite_border_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.chat_bubble_outline_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
}
