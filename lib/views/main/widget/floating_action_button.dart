part of '../main_page.dart';

class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.white,
      elevation: 4,
      child: const Icon(
        Icons.question_answer,
      ),
    );
  }
}
