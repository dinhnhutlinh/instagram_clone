import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://picsum.photos/200/300'),
          ),
          title: const Text('username'),
          subtitle: const Text('location'),
          trailing: IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ),
        Image.network('https://picsum.photos/200/300'),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.chat_bubble_outline),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {},
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.ltr,
              children: const [
                Text(
                  'Liked by username and 999 others',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 4),
                Text(
                  'username caption',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const Divider(),
        Row(
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://picsum.photos/200/300',
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: TextField(
                scribbleEnabled: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Add a comment...',
                ),
              ),
            ),
            Text('Post'),
          ],
        ),
      ],
    );
  }
}
