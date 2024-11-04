part of '../home_page.dart';

class _FirstProduct extends StatelessWidget {
  const _FirstProduct({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onLongPress: () => tts.speak('봄까지 입기 좋아요.  맨투맨 & 후드. | 오래갈 이너 만나보기'),
      child: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: width,
              height: width,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: width / 10),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: width / 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    content,
                    style: TextStyle(
                      fontSize: width / 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
