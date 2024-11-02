part of '../splash_page.dart';

class _Icon extends StatefulWidget {
  const _Icon();

  @override
  State<_Icon> createState() => _IconState();
}

class _IconState extends State<_Icon> with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ));

  // ignore: unused_field
  late final CurvedAnimation _curvedAnimation = CurvedAnimation(
    parent: _animationController,
    curve: Curves.ease,
  );

  @override
  void initState() {
    _animationController.forward();
    Future.delayed(
      const Duration(milliseconds: 3000),
      () {
        if (access_token == null) {
          Navigator.pushAndRemoveUntil(
            // ignore: use_build_context_synchronously
            context,
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => const AuthPage(),
              transitionDuration: const Duration(milliseconds: 250),
              transitionsBuilder: (_, a, __, c) => FadeTransition(
                opacity: a,
                child: c,
              ),
            ),
            (predicate) => false,
          );
        } else {
          Navigator.pushAndRemoveUntil(
            // ignore: use_build_context_synchronously
            context,
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => const HomePage(),
              transitionDuration: const Duration(milliseconds: 250),
              transitionsBuilder: (_, a, __, c) => FadeTransition(
                opacity: a,
                child: c,
              ),
            ),
            (predicate) => false,
          );
        }
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (build, child) => Transform.translate(
        offset: Offset(_curvedAnimation.value * 80 - 80, 0),
        child: AnimatedOpacity(
          opacity: _animationController.value,
          duration: const Duration(milliseconds: 200),
          child: SvgPicture.asset('assets/icon/BET.svg'),
        ),
      ),
      animation: _animationController,
    );
  }
}
