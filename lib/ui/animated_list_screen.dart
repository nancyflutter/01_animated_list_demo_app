import 'package:animated_list_demo_app/controller/animated_list_controller.dart';
import 'package:animated_list_demo_app/ui/animated_list_demo_using_expansion_listtile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return GetX<AnimatedListController>(
      init: AnimatedListController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.deepPurple.shade700,
            ),
            title: Text(
              "Animated List Demo",
              style: TextStyle(
                color: Colors.deepPurple.shade700,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            automaticallyImplyLeading: true,
            actions: [
              IconButton(
                onPressed: () {
                  Get.to(() => const ExpansionListTileDemoScreen());
                },
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          body: Column(
            children: [
              TextButton(
                onPressed: () {
                  controller.toggleAnimation();
                },
                child: const Text(
                  "Tap For ANIMATION",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                    shadows: [
                      Shadow(
                        color: Colors.indigo,
                        blurRadius: 4,
                        offset: Offset(-1, 1),
                      ),
                    ],
                  ),
                ),
              ),
              MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: Expanded(
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: controller.listData.length,
                    itemBuilder: (context, index) {
                      return GetX(
                          init: AnimatedListController(),
                          builder: (controller) {
                            return AnimatedContainer(
                              height: 52,
                              width: screenWidth,
                              curve: Curves.easeInOut,
                              duration: Duration(milliseconds: 300 + (index * 200)),
                              transform: Matrix4.translationValues(controller.startAnimation.value == true ? 0 : screenWidth, 0, 0),
                              margin: const EdgeInsets.only(
                                bottom: 12,
                                right: 12,
                                left: 12,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: screenWidth / 20,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple.shade100,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.deepPurple.shade700,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    controller.listData[index].text.toString(),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    controller.listData[index].icon,
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
