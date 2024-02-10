import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:street_kind/features/leaderboard/widgets/leaderboard_item.dart';
import 'package:street_kind/shared/utils/extensions/extensions_on_context.dart';

import '../utils/demo.dart';
import '../widgets/leaderboard_top.dart';

@RoutePage()
class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final demoData = generateDemoUsers(limit: 100);
    // final me = demoData.firstWhere((element) => element.isMe);

    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.purple.shade300,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  width: context.sizeWidth,
                ),
                ToggleButtons(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  constraints: const BoxConstraints(minWidth: 120, minHeight: 40),
                  borderColor: Colors.white,
                  fillColor: Colors.purple,
                  borderWidth: 0,
                  color: Colors.white,
                  selectedColor: Colors.amber,
                  isSelected: const [
                    true,
                    false,
                    false,
                  ],
                  children: const [
                    Text(
                      'All time',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'This week',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'This month',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                  onPressed: (index) {},
                ),
                const SizedBox(height: 20),
                LeaderboardTop(
                  firstPlace: demoData[0],
                  secondPlace: demoData[1],
                  thirdPlace: demoData[2],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: demoData.length,
              itemBuilder: (context, index) => LeaderboardItem(
                user: demoData[index],
                highLightMe: false,
              ),
            ),
          ),
          // const SizedBox(
          //   height: 16,
          // ),
          // LeaderboardItem(
          //   user: me,
          //   highLightMe: false,
          // )
        ],
      ),
    );
  }
}
