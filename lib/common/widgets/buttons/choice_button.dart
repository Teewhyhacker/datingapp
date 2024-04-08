import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  const ChoiceButton(
      {super.key,
      this.height = 55,
      this.width = 55,
      this.size = 25,
      this.hasGradient = false,
      this.color,
      required this.icon});
  final double height;
  final double width;
  final double size;
  final Color? color;
  final bool hasGradient;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          gradient: hasGradient
              ? LinearGradient(colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColorLight
                ])
              : LinearGradient(colors: [Colors.white, Colors.white]),
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withAlpha(50),
                blurRadius: 4,
                spreadRadius: 4,
                offset: const Offset(3, 3))
          ]),
      child: Icon(
        icon,
        color: color,
        size: size,
      ),
    );
  }
}
