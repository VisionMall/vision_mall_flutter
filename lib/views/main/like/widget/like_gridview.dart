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
        childAspectRatio: 0.64, // Adjust aspect ratio
      ),
      itemCount: 11,
      itemBuilder: (context, index) {
        return const Center(
          child: ProductPreviewComponents(
            imgae:
                'https://chocolate-jacket-c12.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2Fe887c72b-6120-4dde-83c8-46c6a607305e%2Fc617838e-144c-42b2-a1d6-5f959a76faf9%2F%25ED%2599%2594%25EB%25A9%25B4_%25EC%25BA%25A1%25EC%25B2%2598_2024-11-04_133743.png?table=block&id=4848cd9c-fa8c-4c26-9624-915596f60bea&spaceId=e887c72b-6120-4dde-83c8-46c6a607305e&width=2000&userId=&cache=v2',
            brand: '아디다스',
            goods: '아디다스 삼선',
            price: '97000',
          ),
        );
      },
    );
  }
}
