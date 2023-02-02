import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fshow/ui/widgets/info_wrapper_widget.dart';
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
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
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
              SizedBox(
                width: Get.width / 1.5,
                height: Get.height,
                // color: Colors.blue,
                child: const InfoWrapperWidget(),
              ),
              const Spacer(),
              SizedBox(
                width: 80,
                height: Get.height - 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          print("Search");
                        },
                        child: const Icon(CupertinoIcons.search,
                            size: 35, color: Colors.white)),
                    const OptionLateralBarWidget(),
                  ],
                ),
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
