part of '../main_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topbar,
    required this.floatingActionButton,
    required this.bottomBar,
    required this.tabview,
  });

  final PreferredSizeWidget topbar;
  final Widget floatingActionButton;
  final Widget bottomBar;
  final Widget tabview;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar,
      floatingActionButton: floatingActionButton,
      body: tabview,
      bottomNavigationBar: bottomBar,
    );
  }
}
