import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:vision_mall/data.dart';
import 'package:vision_mall/views/main/home/home_page.dart';
import 'package:vision_mall/views/main/like/like_page.dart';
import 'package:vision_mall/views/main/user/user_page.dart';
import 'package:vision_mall/views/search/search_page.dart';
part './widget/bottom_bar.dart';
part './widget/floating_action_button.dart';
part './widget/topbar.dart';
part './widget/scaffold.dart';
part './widget/tabview.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  int index = 1;
  late final TabController controller = TabController(length: 3, vsync: this);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.index = 1;
    controller.addListener(tabListener);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.removeListener(tabListener);
    controller.dispose();
  }

  void tabListener() {
    setState(() {
      index = controller.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topbar: const _Topbar(),
      floatingActionButton: const _FloatingActionButton(),
      tabview: _TabView(controller: controller),
      bottomBar: _BottomBar(index: index, controller: controller),
    );
  }
}
