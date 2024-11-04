import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vision_mall/components/product_preview.dart';
import 'package:vision_mall/data.dart';
import 'package:vision_mall/dto/product/product_dto.dart';
part 'widget/scaffold.dart';
part 'widget/first_product.dart';
part './widget/else_product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Scaffold(
      firstProduct: _FirstProduct(title: '봄까지 입기 좋아요', content: '맨투맨 & 후드 | 오래갈 이너 만나보기'),
      elseProduct: _ElseProduct(),
    );
  }
}
