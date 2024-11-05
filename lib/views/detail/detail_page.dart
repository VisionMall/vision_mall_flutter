import 'package:flutter/material.dart';
import 'package:vision_mall/data.dart';
import 'package:vision_mall/views/order/order_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.image,
    required this.brand,
    required this.goods,
    required this.price,
  });

  final List<String> image;
  final String brand;
  final String goods;
  final String price;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onLongPress: () => tts.speak('상풍 이미지'),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    color: Colors.grey,
                    height: width,
                    width: width,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      image.toString(),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onLongPress: () {
                tts.speak('$brand. $goods');
                tts.speak(price);
              },
              child: Container(
                decoration: const BoxDecoration(),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      brand,
                      style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      goods,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price,
                          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'SALE',
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.red),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 226, 226, 226),
              thickness: 7,
              height: 100,
            ),
            const Column(
              children: [],
            )
          ],
        ),
      ),
      bottomSheet: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const OrderPage(),
          ),
        ),
        onLongPress: () => tts.speak('구매하기 버튼'),
        child: Container(
          alignment: Alignment.center,
          height: 80,
          width: double.infinity,
          color: Colors.blue,
          child: const Text(
            '구매하기',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
