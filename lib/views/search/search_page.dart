import 'package:flutter/material.dart';
import 'package:vision_mall/data.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  BackButton(
                    style: IconButton.styleFrom(iconSize: 30),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.black,
                      controller: searchTextEditingControlle,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
