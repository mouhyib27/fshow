import 'package:flutter/material.dart';
import 'package:fshow/ui/widgets/video_page.dart';
import 'package:fshow/utils/constants/widgets.dart';
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
    return Scaffold(
        body: Center(
      child: videoPlayerController!.value.isInitialized
          ? VideoPageWidget(controller: videoPlayerController!)
          : kLoadingSpinner,
    ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    videoPlayerController!.dispose();
  }
}
