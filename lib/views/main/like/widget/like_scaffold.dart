part of '../like_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    super.key,
    required this.gridview,
  });

  final Widget gridview;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: gridview,
    );
  }
}
