import 'package:flutter/material.dart';
import 'package:fshow/business/controllers/navigation_controller.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  final NavigationController navigationController =
      Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(color: Colors.black),
      child: Obx(() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              navigationController.currentIndex.value = 0;
            },
            child: Column(
              children: [
                navigationController.currentIndex.value == 0
                    ? const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 25,
                )
                    : const Icon(
                  Icons.home_outlined,
                  color: Colors.grey,
                  size: 25,
                ),
                const SizedBox(height: 5),
                Text(
                  "Accueil",
                  style: TextStyle(
                      color: navigationController.currentIndex.value == 0
                          ? Colors.white
                          : Colors.grey),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              navigationController.currentIndex.value = 1;
            },
            child: Column(
              children: [
                navigationController.currentIndex.value == 1
                    ? const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 25,
                )
                    : const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 25,
                ),
                const SizedBox(height: 5),
                Text(
                  "Découvrir",
                  style: TextStyle(
                      color: navigationController.currentIndex.value == 1
                          ? Colors.white
                          : Colors.grey),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              navigationController.currentIndex.value = 2;
            },
            child: Container(
              height: 35,
              width: 50,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: const Icon(Icons.add, color: Colors.black),
            ),
          ),
          InkWell(
            onTap: () {
              navigationController.currentIndex.value = 3;
            },
            child: Column(
              children: [
                navigationController.currentIndex.value == 3
                    ? const Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 25,
                )
                    : const Icon(
                  Icons.messenger_outline,
                  color: Colors.grey,
                  size: 25,
                ),
                const SizedBox(height: 5),
                Text(
                  "Messagerie",
                  style: TextStyle(
                      color: navigationController.currentIndex.value == 3
                          ? Colors.white
                          : Colors.grey),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              navigationController.currentIndex.value = 4;
            },
            child: Column(
              children: [
                navigationController.currentIndex.value == 4
                    ? const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 25,
                )
                    : const Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                  size: 25,
                ),
                const SizedBox(height: 5),
                Text(
                  "Profil",
                  style: TextStyle(
                      color: navigationController.currentIndex.value == 4
                          ? Colors.white
                          : Colors.grey),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
