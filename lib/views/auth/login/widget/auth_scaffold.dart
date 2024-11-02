part of '../auth_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.betLogo,
    required this.authButton,
    required this.sizedbox,
  });

  final Widget betLogo;
  final Widget authButton;
  final Widget sizedbox;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            betLogo,
            sizedbox,
            authButton,
          ],
        ),
      ),
    );
  }
}
