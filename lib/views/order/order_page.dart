import 'package:flutter/material.dart';
import 'package:vision_mall/data.dart';
import 'package:vision_mall/views/order/order_success_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  bool address = false;
  bool productInfo = false;
  bool payment = false;
  int choicePayment = 0;
  List<String> payments = ['카드', '가상계좌', 'Apple Pay', '휴대폰', '카카오페이', '네이버페이', '페이코'];

  // Define the TextEditingController
  final TextEditingController addressTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Set initial text for address TextField
    addressTextEditingController.text = '광주광역시 북구 동림동 운암산 코오롱하늘체 111동 1802호';
  }

  Widget addressWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '박유현',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          's23008@gsm.hs.kr',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 82, 82, 82),
          ),
        ),
        TextField(
          cursorColor: Colors.black,
          controller: addressTextEditingController,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget productInfoWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(color: Colors.grey),
        ),
        const SizedBox(
          width: 10,
        ),
        const Expanded(
          child: SizedBox(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '아디다스',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '아디다스 삼선 점퍼 자켓',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '79,000원',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget paymentWidget() {
    return SizedBox(
      height: 300,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2,
          crossAxisCount: 3, // Set number of columns
        ),
        itemCount: payments.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                choicePayment = index;
              });
            },
            onLongPress: () {
              // Ensure tts is properly initialized and available
              // Replace this line with actual tts.speak implementation if needed
              tts.speak('결제수단 : ${payments[index]}');
            },
            child: Container(
              margin: const EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(6)),
                border: Border.all(
                  color: choicePayment == index ? Colors.blue : Colors.grey,
                ),
              ),
              child: Text(
                payments[index],
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: choicePayment == index ? Colors.blue : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '배송지',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            address = !address;
                          });
                        },
                        icon: Icon(
                          address ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  address ? Container() : addressWidget(),
                ],
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 226, 226, 226),
              thickness: 7,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '상품 정보',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            productInfo = !productInfo;
                          });
                        },
                        icon: Icon(
                          productInfo ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  productInfo ? Container() : productInfoWidget(),
                ],
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 226, 226, 226),
              thickness: 7,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '결제수단',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            payment = !payment;
                          });
                        },
                        icon: Icon(
                          payment ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  payment ? Container() : paymentWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const OrderSuccessPage(),
          ),
        ),
        onLongPress: () => tts.speak('구매하기 버튼'),
        child: Container(
          alignment: Alignment.center,
          height: 80,
          width: double.infinity,
          color: Colors.blue,
          child: const Text(
            '결제하기',
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
