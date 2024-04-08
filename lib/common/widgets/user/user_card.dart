import 'package:chat_app/model/user_model.dart';
import 'package:chat_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import 'user_image_small.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 1.4,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(user.imageUrls[0]), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 4,
                        offset: Offset(4, 4))
                  ]),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(200, 0, 0, 0),
                    Color.fromARGB(0, 0, 0, 0)
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            ),
            Positioned(
              bottom: 30,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${user.name}, ${user.age}",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "${user.jobTitle}",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                  Row(
                    children: [
                      UserImageSmall(image: user.imageUrls[1]),
                      UserImageSmall(image: user.imageUrls[2]),
                      UserImageSmall(image: user.imageUrls[3]),
                      UserImageSmall(image: user.imageUrls[4]),
                      // const SizedBox(width: 1),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(
                          Icons.info,
                          size: 25,
                          color: Theme.of(context).primaryColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
