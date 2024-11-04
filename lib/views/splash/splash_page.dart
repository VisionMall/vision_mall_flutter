import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:vision_mall/api/auth.dart';
import 'package:vision_mall/api/product.dart';
import 'package:vision_mall/data.dart';
import 'package:vision_mall/views/auth/auth_page.dart';
import 'package:vision_mall/views/main/main_page.dart';
part 'widget/scaffold.dart';
part 'widget/icon.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Scaffold(
      icon: _Icon(),
    );
  }
}
