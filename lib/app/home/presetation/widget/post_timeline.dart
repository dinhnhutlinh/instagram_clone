import 'package:flutter/material.dart';
import 'package:instagram_clone/app/post/presentain/post_view.dart';

class PostTimeLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        PostView(),
        PostView(),
      ],
    );
  }
}
