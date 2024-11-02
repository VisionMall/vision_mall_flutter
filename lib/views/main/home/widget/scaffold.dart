part of '../home_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topbar,
    required this.bottomBar,
    required this.floatingActionButton,
    required this.userButton,
  });

  final PreferredSizeWidget topbar;
  final Widget bottomBar;
  final Widget floatingActionButton;
  final Widget userButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar,
      body: Column(
        children: [userButton],
      ),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomBar,
    );
  }
}
