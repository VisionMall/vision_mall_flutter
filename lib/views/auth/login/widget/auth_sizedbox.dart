part of '../auth_page.dart';

class _AuthSizedBox extends StatefulWidget {
  const _AuthSizedBox();

  @override
  State<_AuthSizedBox> createState() => _AuthSizedBoxState();
}

class _AuthSizedBoxState extends State<_AuthSizedBox> with TickerProviderStateMixin {
  late final AnimationController _ct = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 700),
  );
  late final CurvedAnimation _controller = CurvedAnimation(parent: _ct, curve: Curves.fastEaseInToSlowEaseOut);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _ct.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _ct.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: _ct,
      builder: (context, child) {
        return SizedBox(
          height: (height / 3) * _controller.value,
        );
      },
    );
  }
}
