import 'package:flutter/material.dart';
part 'widget/scaffold.dart';
part 'widget/topbar.dart';
part 'widget/bottom_bar.dart';
part 'widget/floating_action_button.dart';
part 'widget/user_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Scaffold(
      topbar: _Topbar(),
      bottomBar: _BottomBar(),
      floatingActionButton: _FloatingActionButton(),
      userButton: _UserButton(),
    );
  }
}
