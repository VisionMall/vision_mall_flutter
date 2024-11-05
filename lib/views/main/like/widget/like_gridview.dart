part of '../like_page.dart';

class _GridView extends StatelessWidget {
  const _GridView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth ~/ 180; // Adjust this value for the item width

    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount > 1 ? crossAxisCount : 2, // At least 2 items per row
        childAspectRatio: 0.5, // Adjust aspect ratio
      ),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Center(
          child: ProductPreviewComponents(
            imgae: products[index].images[0],
            brand: products[index].content,
            goods: products[index].title,
            price: products[index].price.toString(),
            like: true,
          ),
        );
      },
    );
  }
}
