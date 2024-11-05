import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:vision_mall/data.dart';
import 'package:vision_mall/views/detail/detail_page.dart';

class ProductPreviewComponents extends StatefulWidget {
  ProductPreviewComponents({
    super.key,
    required this.brand,
    required this.goods,
    required this.price,
    required this.imgae,
    required this.like,
  });
  final String brand;
  final String goods;
  final String price;
  final String imgae;
  bool like;

  @override
  State<ProductPreviewComponents> createState() => _ProductPreviewComponentsState();
}

class _ProductPreviewComponentsState extends State<ProductPreviewComponents> {
  @override
  Widget build(BuildContext context) {
    final formattedPrice = NumberFormat('#,###').format(int.parse(widget.price.replaceAll(',', '')));
    return GestureDetector(
      onLongPress: () {
        tts.speak('${widget.brand}. ${widget.goods}');
        tts.speak(widget.price);
      },
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => DetailPage(
              brand: widget.brand,
              goods: widget.goods,
              price: formattedPrice,
              image: widget.imgae,
            ),
          )),
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: 150,
                  child: Image.network(
                    widget.imgae,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        widget.like = !widget.like;
                      });
                    },
                    icon: SvgPicture.asset(
                      widget.like ? 'assets/icon/heart.svg' : 'assets/icon/heart_empty.svg',
                      height: 25,
                      width: 25,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.brand,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.goods,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 5),
                      Text(
                        '$formattedPrice원',
                        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                    ],
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
