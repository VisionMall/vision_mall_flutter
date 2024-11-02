part of '../auth_page.dart';

class _AutoButton extends StatelessWidget {
  const _AutoButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (builder) => const HomePage(),
          ),
          (predicate) => false,
        );
      },
      icon: SvgPicture.asset(
        'assets/icon/ios_neutral_rd_ctn.svg',
        height: 55,
      ),
    );
  }
}
