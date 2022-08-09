import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class AuthWallAppBottomBar extends PlatformNavBar {
  final int selectedItemPosition;
  final void Function(int) onItemSelected;

  AuthWallAppBottomBar(
      {Key? key,
        required BuildContext context,
        required this.selectedItemPosition,
        required this.onItemSelected})
      : super(
      key: key,
      itemChanged: onItemSelected,
      currentIndex: selectedItemPosition,
      items: [
        BottomNavigationBarItem(
            icon: Icon(context.platformIcons.home),
            label: "Home"
        ),
        BottomNavigationBarItem(
            icon: Icon(context.platformIcons.conversationBubble),
            label: "Messages"
        ),
        BottomNavigationBarItem(
            icon: Icon(context.platformIcons.person),
            label: "Profile"
        )
      ]);
}