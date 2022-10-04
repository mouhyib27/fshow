import 'package:flutter/material.dart';
import 'package:fshow/business/controllers/navigation_controller.dart';
import 'package:fshow/ui/screens/home_screen.dart';
import 'package:fshow/ui/widgets/shared/navigation_bar.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class WrapperWidget extends StatefulWidget {
  const WrapperWidget({Key? key}) : super(key: key);

  @override
  State<WrapperWidget> createState() => _WrapperWidgetState();
}

class _WrapperWidgetState extends State<WrapperWidget> {
  final NavigationController navigationController =
  Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    final appPages = [
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen()
    ];
    return Obx(() => Scaffold(
      body: appPages[navigationController.currentIndex.value],
      bottomNavigationBar: const NavigationBarWidget(),
    ));
  }
}

