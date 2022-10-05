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
        height: Get.height / 2,
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(width: 50, height: 50, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),),
            InkWell(
              onTap: () {
                print("Added new like");
              },
              child: Column(
                children: [
                  Icon(CupertinoIcons.heart, size: 40, color: Colors.white),
                  SizedBox(height: 5),
                  Text("100", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            InkWell(
              onTap: () {
                print("Added new like");
              },
              child: Column(
                children: [
                  Icon(CupertinoIcons.chat_bubble_text, size: 40, color: Colors.white),
                  SizedBox(height: 5),
                  Text("100", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            InkWell(
              onTap: () {
                print("Added new like");
              },
              child: Column(
                children: [
                  Icon(CupertinoIcons.bookmark, size: 40, color: Colors.white),
                  SizedBox(height: 5),
                  Text("100", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            InkWell(
              onTap: () {
                print("Added new like");
              },
              child: Column(
                children: [
                  Icon(Icons.share, size: 40, color: Colors.white),
                  SizedBox(height: 5),
                  Text("100", style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
