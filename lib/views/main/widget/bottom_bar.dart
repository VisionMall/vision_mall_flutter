part of '../main_page.dart';

// ignore: must_be_immutable
class _BottomBar extends StatelessWidget {
  _BottomBar({
    required this.index,
    required this.controller,
  });
  int index;
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (value) => controller.animateTo(value),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 35,
            ),
            label: '2'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35,
            ),
            label: 'home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 35,
            ),
            label: '3'),
      ],
    );
  }
}
