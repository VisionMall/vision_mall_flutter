part of '../user_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    super.key,
    required this.profile,
  });
  final Widget profile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: profile),
          const Divider(
            color: Color.fromARGB(255, 226, 226, 226),
            thickness: 7,
            height: 50,
          ),
        ],
      ),
    );
  }
}
