import 'package:chat_app/model/user_model.dart';
import 'package:chat_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../common/widgets/appbar/custom_app_bar.dart';
import '../common/widgets/buttons/choice_button.dart';
import '../common/widgets/user/user_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = "/";
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Draggable(
            feedback: UserCard(user: User.users[0]),
            childWhenDragging: UserCard(user: User.users[1]),
            child: UserCard(user: User.users[0]),
            onDragEnd: (drag) {
              if (drag.velocity.pixelsPerSecond.dx < 0) {
                print("swipe left");
              } else {
                print("swipe right");
              }
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChoiceButton(
                  color: Colors.red,
                  icon: Icons.clear_rounded,
                ),
                ChoiceButton(
                  height: 65,
                  width: 65,
                  color: Colors.white,
                  size: 30,
                  icon: Icons.favorite,
                  hasGradient: true,
                ),
                ChoiceButton(
                  color: Color(0xFF2B2E4A),
                  icon: Icons.watch_later,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
