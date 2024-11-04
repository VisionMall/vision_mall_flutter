part of '../home_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.firstProduct,
    required this.elseProduct,
  });

  final Widget firstProduct;
  final Widget elseProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            firstProduct,
            const SizedBox(
              height: 20,
            ),
            elseProduct
          ],
        ),
      ),
    );
  }
}
