import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vision_mall/views/main/home/home_page.dart';
part 'widget/auth_scaffold.dart';
part 'widget/bet_logo.dart';
part 'widget/auth_button.dart';
part 'widget/auth_sizedbox.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Scaffold(
      betLogo: _BetLogos(),
      sizedbox: _AuthSizedBox(),
      authButton: _AutoButton(),
    );
  }
}