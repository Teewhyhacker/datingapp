
import 'package:flutter/material.dart';

class UserImageSmall extends StatelessWidget {
  final String image;
  const UserImageSmall({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, right: 8),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
    );
  }
}