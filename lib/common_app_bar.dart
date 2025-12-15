import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color(0xffFFFFFF),
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      title: Text("Open Fashion"),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
      ],
    );
  }
}
