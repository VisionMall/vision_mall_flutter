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
      items: [
        BottomNavigationBarItem(
            icon: GestureDetector(
              onLongPress: () => tts.speak('위시리스트'),
              child: const Icon(
                Icons.favorite,
                size: 35,
              ),
            ),
            label: '2'),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onLongPress: () => tts.speak('홈'),
              child: const Icon(
                Icons.home,
                size: 35,
              ),
            ),
            label: 'home'),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onLongPress: () => tts.speak('사용자 정보'),
              child: const Icon(
                Icons.person,
                size: 35,
              ),
            ),
            label: '3'),
      ],
    );
  }
}
