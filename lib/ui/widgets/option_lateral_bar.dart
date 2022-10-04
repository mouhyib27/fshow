import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class OptionLateralBarWidget extends StatefulWidget {
  const OptionLateralBarWidget({Key? key}) : super(key: key);

  @override
  State<OptionLateralBarWidget> createState() => _OptionLateralBarWidgetState();
}

class _OptionLateralBarWidgetState extends State<OptionLateralBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.red,
        height: Get.height / 2,
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(width: 50, height: 50, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),),
            InkWell(
              onTap: () {
                print("Added new like");
              },
              child: Column(
                children: [
                  Icon(CupertinoIcons.heart),
                  SizedBox(height: 5),
                  Text("100")
                ],
              ),
            ),
            InkWell(
              onTap: () {
                print("Added new like");
              },
              child: Column(
                children: [
                  Icon(CupertinoIcons.chat_bubble_text),
                  SizedBox(height: 5),
                  Text("100")
                ],
              ),
            ),
            InkWell(
              onTap: () {
                print("Added new like");
              },
              child: Column(
                children: [
                  Icon(CupertinoIcons.bookmark),
                  SizedBox(height: 5),
                  Text("100")
                ],
              ),
            ),
            InkWell(
              onTap: () {
                print("Added new like");
              },
              child: Column(
                children: [
                  Icon(Icons.share),
                  SizedBox(height: 5),
                  Text("100")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
