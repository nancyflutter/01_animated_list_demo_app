/// Animated List in flutter using (set state(){})
/*
import 'package:animated_list_demo_app/model/data_modal.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  bool startAnimation = false;

  List<DataModel> listData = [
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
  ];

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   setState(() {
    //     startAnimation = true;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Animated List Demo",
          style: TextStyle(
            color: Colors.blueGrey.shade700,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: true,
      ),
      // backgroundColor: const Color(0xFF222431),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth / 20,
        ),
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  startAnimation = !startAnimation;
                });
                // setState(() {
                //   startAnimation = true;
                // });
              },
              child: const Text(
                "Tap For ANIMATION",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
            ),
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: listData.length,
                itemBuilder: (context, index) {
                  return item(index);
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Widget item(int index) {
    return AnimatedContainer(
      height: 55,
      width: screenWidth,
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 300 + (index * 200)),
      transform: Matrix4.translationValues(startAnimation ? 0 : screenWidth, 0, 0),
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth / 20,
      ),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${index + 1}. ${listData[index].text}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Icon(
            listData[index].icon,
          ),
        ],
      ),
    );
  }
}
*/
