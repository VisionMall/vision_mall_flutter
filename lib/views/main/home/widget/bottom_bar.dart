part of '../home_page.dart';

class _BottomBar extends StatelessWidget {
  const _BottomBar();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: '2'),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: '3'),
      ],
    );
  }
}
