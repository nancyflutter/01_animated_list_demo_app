import 'package:flutter/material.dart';

class ExpansionListTileDemoScreen extends StatefulWidget {
  const ExpansionListTileDemoScreen({Key? key}) : super(key: key);

  @override
  State<ExpansionListTileDemoScreen> createState() => _ExpansionListTileDemoScreenState();
}

class _ExpansionListTileDemoScreenState extends State<ExpansionListTileDemoScreen>
    with SingleTickerProviderStateMixin {
  late List<bool> isExpandedList;
  late AnimationController _animationController;
  late Animation<double> _slideAnimation;

  @override
  void initState() {
    super.initState();
    isExpandedList = List.generate(6, (index) => false);

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _slideAnimation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    );

    // Start the animation when the screen opens
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(),
      body: AnimatedBuilder(
        animation: _slideAnimation,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(MediaQuery.of(context).size.width * _slideAnimation.value, 0),
            child: child,
          );
        },
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                child: ExpansionTile(
                  backgroundColor: Colors.white,
                  collapsedBackgroundColor: Colors.white,
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Tips for Beginners"),
                  ),
                  initiallyExpanded: isExpandedList[index],
                  onExpansionChanged: (isExpanded) {
                    setState(() {
                      isExpandedList[index] = isExpanded;
                    });
                  },
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        ' • No one is born with soccer skills. It takes many years to improve both your strengths and weaknesses. You could be fast but not very strong; good at corner kicks but not very good at passing. However, after practicing a lot, your skill level will gradually improve. With a few drills to practice every day, you can eventually become a very good soccer player.',
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
