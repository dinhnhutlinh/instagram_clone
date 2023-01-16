import 'package:flutter/material.dart';
import 'package:instagram_clone/app/reels/presentaion/widget/reel_info.dart';
import 'package:video_player/video_player.dart';

class ReelsPage extends StatelessWidget {
  final controller = PageController(initialPage: 0);
  ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Reels'),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: const [
          ReelVideoView(),
          ReelVideoView(),
        ],
      ),
    );
  }
}

class ReelVideoView extends StatefulWidget {
  const ReelVideoView({super.key});

  @override
  State<ReelVideoView> createState() => _ReelVideoViewState();
}

class _ReelVideoViewState extends State<ReelVideoView> {
  late VideoPlayerController videoPlayerController;
  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.network(
        'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    videoPlayerController.setLooping(true);

    videoPlayerController.play();
  }

  @override
  void dispose() {
    if (mounted) {
      videoPlayerController.pause();
      videoPlayerController.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.topCenter,
      children: [
        Center(
          child: AspectRatio(
            aspectRatio: videoPlayerController.value.aspectRatio,
            child: VideoPlayer(
              videoPlayerController,
            ),
          ),
        ),
        const ReelInfo()
      ],
    );
  }
}
