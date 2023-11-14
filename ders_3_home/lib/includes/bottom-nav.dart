import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
        ),
        BottomNavigationBarItem(
          label: "Categories",
          icon: Icon(
            Icons.category,
            color: Colors.grey,
          ),
          tooltip: 'Te',
        ),
        BottomNavigationBarItem(
          label: "Account",
          icon: Icon(
            Icons.category,
            color: Colors.grey,
          ),
        ),
        BottomNavigationBarItem(
          label: "More",
          icon: Icon(
            Icons.more_horiz,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
