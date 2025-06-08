import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Videoplayer extends StatefulWidget {
  const Videoplayer({super.key});

  @override
  State<Videoplayer> createState() => _VideoplayerState();
}

class _VideoplayerState extends State<Videoplayer> {
  late FlickManager flickManager;
  late FlickManager secondFlickManager;
  late FlickManager thirdFlickManager;
  late FlickManager fourFlickerManager;
  late FlickManager fifthFlickerManager;
  late FlickManager sixthFlickerManager;

  @override
  void initState() {
    super.initState();

    // প্রথম ভিডিও
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
        ),
      ),
    );

    // দ্বিতীয় ভিডিও
    secondFlickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
        ),
      ),
    );

    // তৃতীয় ভিডিও (অ্যাসেট থেকে)
    thirdFlickManager = FlickManager(
      videoPlayerController: VideoPlayerController.asset(
        "assets/videos/itaci.mp4",
      ),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    secondFlickManager.dispose();
    thirdFlickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              buildVideoCard(flickManager),
              buildVideoCard(secondFlickManager),
              buildVideoCard(thirdFlickManager),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildVideoCard(FlickManager manager) {
    return Container(
      height: 700,
      width: 500,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: FlickVideoPlayer(flickManager: manager),
        ),
      ),
    );
  }
}
