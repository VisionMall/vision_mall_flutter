import 'package:flutter/material.dart';
import 'package:vision_mall/components/product_preview.dart';
part './widget/like_scaffold.dart';
part './widget/like_gridview.dart';

class LikePage extends StatelessWidget {
  const LikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      gridview: _GridView(),
    );
  }
}
