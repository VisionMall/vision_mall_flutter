part of '../home_page.dart';

class _ElseProduct extends StatelessWidget {
  const _ElseProduct({super.key});

  @override
  Widget build(BuildContext context) {
    // Set a responsive height based on screen size
    double height = MediaQuery.of(context).size.height * 0.35; // 40% of the screen height

    return SizedBox(
      height: height, // Responsive height
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const ProductPreviewComponents(
            brand: '아디다스',
            goods: '아디다스 3줄 점퍼',
            discount: '15%',
            price: '79,900원',
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 10); // Spacing between items
        },
        itemCount: 10,
      ),
    );
  }
}
