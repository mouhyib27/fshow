import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  VideoPlayerController? videoPlayerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoPlayerController = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => videoPlayerController!.play());
  }

  @override
  Widget build(BuildContext context) {
    final videoSize = videoPlayerController!.value.size;
    final videoHeight = videoSize.height;
    final videoWidth = videoSize.width;

    return Scaffold(
        body: Center(
      child: videoPlayerController!.value.isInitialized
          ? GestureDetector(
              onTap: () {
                setState(() {
                  videoPlayerController!.value.isPlaying
                      ? videoPlayerController!.pause()
                      : videoPlayerController!.play();
                });
              },
              child: Stack(
                fit: StackFit.expand,
                children: [
                  FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      height: videoHeight,
                      width: videoWidth,
                      child: AspectRatio(
                        aspectRatio: videoPlayerController!.value.aspectRatio,
                        child: VideoPlayer(videoPlayerController!),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : const Text("An error occurred"),
    ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    videoPlayerController!.dispose();
  }
}
