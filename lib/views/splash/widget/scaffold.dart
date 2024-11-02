part of '../splash_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.icon,
  });

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: icon,
      ),
    );
  }
}
