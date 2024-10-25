import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(69),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => onTap(0),
            icon: Icon(
              Icons.home,
              size: 30,
              color: currentIndex == 0 ? Colors.red[300] : Colors.black,
            ),
          ),
          IconButton(
            onPressed: () => onTap(1),
            icon: Icon(
              Icons.search,
              size: 30,
              color: currentIndex == 1 ? Colors.red[300] : Colors.black,
            ),
          ),
          IconButton(
            onPressed: () => onTap(2),
            icon: Icon(
              Icons.heart_broken,
              size: 30,
              color: currentIndex == 2 ? Colors.red[300] : Colors.black,
            ),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () => onTap(3),
                icon: Icon(
                  FeatherIcons.shoppingCart,
                  size: 30,
                  color: currentIndex == 3 ? Colors.red[300] : Colors.black,
                ),
              ),
              const Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 10,
                  child: Text("2", style: TextStyle(fontSize: 13)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}