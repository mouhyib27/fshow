import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class InfoWrapperWidget extends StatefulWidget {
  const InfoWrapperWidget({Key? key}) : super(key: key);

  @override
  State<InfoWrapperWidget> createState() => _InfoWrapperWidgetState();
}

class _InfoWrapperWidgetState extends State<InfoWrapperWidget> {
  final tags = ["foryou", "fyp", "honey", "howitsmade"];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: Get.width / 1.5,
        height: Get.height / 4,
        // color: Colors.green,
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Mouko La Merveille",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text.rich(TextSpan(
                text: "Episode 1: How is honey made? Queen bee in action ",
                style: const TextStyle(color: Colors.white, fontSize: 15),
                children: tags
                    .map((tag) => TextSpan(
                        text: "#$tag ",
                        style: const TextStyle(fontWeight: FontWeight.w700)))
                    .toList()))
          ],
        ),
      ),
    );
  }
}
