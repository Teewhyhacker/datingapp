import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              Cimages.appLogo,
              height: 60,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text("Discover",
                style: Theme.of(context).textTheme.displayMedium),
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message,
              color: Theme.of(context).primaryColor,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Theme.of(context).primaryColor,
            ))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
}
