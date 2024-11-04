part of '../main_page.dart';

class _TabView extends StatelessWidget {
  const _TabView({
    required this.controller,
  });
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: const [
        LikePage(),
        HomePage(),
        UserPage(),
      ],
    );
  }
}
