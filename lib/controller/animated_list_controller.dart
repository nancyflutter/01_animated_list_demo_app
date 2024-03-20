import 'package:animated_list_demo_app/model/data_modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedListController extends GetxController {
  RxDouble screenHeight = RxDouble(0);
  RxDouble screenWidth = RxDouble(0);
  RxBool startAnimation = RxBool(false);
  RxString str = RxString("");

  RxList<DataModel> listData = RxList<DataModel>([
    DataModel(text: "ShoppingBag", icon: Icons.shopping_bag),
    DataModel(text: "Analytics", icon: Icons.analytics),
    DataModel(text: "FlagMarker", icon: Icons.flag),
    DataModel(text: "NotificationBell", icon: Icons.notifications),
    DataModel(text: "PiggyBank", icon: Icons.account_balance),
    DataModel(text: "DataCloud", icon: Icons.cloud),
    DataModel(text: "MoonLight", icon: Icons.nightlight_round),
    DataModel(text: "TaskChecklist", icon: Icons.assignment_turned_in),
    DataModel(text: "MapLocation", icon: Icons.location_on),
    DataModel(text: "GearSettings", icon: Icons.settings),
    DataModel(text: "SpaceRocket", icon: Icons.rocket),
    DataModel(text: "BackpackTravel", icon: Icons.backpack),
    DataModel(text: "UserAvatar", icon: Icons.person),
    DataModel(text: "TaskComplete", icon: Icons.done_all),
    DataModel(text: "SearchMagnifier", icon: Icons.search),
    DataModel(text: "PluginModule", icon: Icons.extension),
    DataModel(text: "BluetoothSignal", icon: Icons.bluetooth),
    DataModel(text: "HeartFavorite", icon: Icons.favorite),
    DataModel(text: "LockedPadlock", icon: Icons.lock),
    DataModel(text: "BookmarkRibbon", icon: Icons.bookmark),
  ]);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void toggleAnimation() {
    startAnimation.toggle();
  }
}
