import 'package:flutter/material.dart';
import 'package:vision_mall/data.dart';
part './widget/user_scaffold.dart';
part './widget/user_profile.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      profile: _Profile(
        name: userInfo.name,
      ),
    );
  }
}
