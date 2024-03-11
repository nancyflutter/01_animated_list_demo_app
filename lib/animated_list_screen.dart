import 'package:animated_list_demo_app/animated_list_demo_using_expansion_listtile.dart';
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

  List<String> texts = [
    "ShoppingBag",
    "Analytics",
    "FlagMarker",
    "NotificationBell",
    "PiggyBank",
    "DataCloud",
    "MoonLight",
    "TaskChecklist",
    "MapLocation",
    "GearSettings",
    "SpaceRocket",
    "BackpackTravel",
    "UserAvatar",
    "TaskComplete",
    "SearchMagnifier",
    "PluginModule",
    "BluetoothSignal",
    "HeartFavorite",
    "LockedPadlock",
    "BookmarkRibbon",
  ];

  List<IconData> icons = [
    Icons.shopping_bag,
    Icons.analytics,
    Icons.flag,
    Icons.notifications,
    Icons.account_balance,
    Icons.cloud,
    Icons.nightlight_round,
    Icons.assignment_turned_in,
    Icons.location_on,
    Icons.settings,
    Icons.rocket,
    Icons.backpack,
    Icons.person,
    Icons.done_all,
    Icons.search,
    Icons.extension,
    Icons.bluetooth,
    Icons.favorite,
    Icons.lock,
    Icons.bookmark,
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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExpansionListTileDemoScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
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
                itemCount: texts.length,
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
            "${index + 1}. ${texts[index]}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Icon(
            icons[index],
          ),
        ],
      ),
    );
  }
}
