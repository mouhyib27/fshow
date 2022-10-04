import 'package:flutter/material.dart';
import 'package:fshow/ui/widgets/option_lateral_bar.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:video_player/video_player.dart';

class VideoPageWidget extends StatefulWidget {
  final VideoPlayerController controller;

  const VideoPageWidget({Key? key, required this.controller}) : super(key: key);

  @override
  State<VideoPageWidget> createState() => _VideoPageWidgetState();
}

class _VideoPageWidgetState extends State<VideoPageWidget> {
  @override
  Widget build(BuildContext context) {
    final videoSize = widget.controller.value.size;
    final videoHeight = videoSize.height;
    final videoWidth = videoSize.width;
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.controller.value.isPlaying
              ? widget.controller.pause()
              : widget.controller.play();
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
                aspectRatio: widget.controller.value.aspectRatio,
                child: VideoPlayer(widget.controller),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: Get.width / 2,
                color: Colors.blue,
              ),
              const Spacer(),
              SizedBox(
                width: 80,
                height: Get.height,
                child: const OptionLateralBarWidget(),
              ),
            ],
          ),
          if (!widget.controller.value.isPlaying)
            Icon(Icons.play_arrow,
                size: 90, color: Colors.white.withOpacity(0.3)),
        ],
      ),
    );
  }
}
