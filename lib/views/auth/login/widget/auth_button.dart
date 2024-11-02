part of '../auth_page.dart';

class _AutoButton extends StatefulWidget {
  const _AutoButton();

  @override
  State<_AutoButton> createState() => _AutoButtonState();
}

class _AutoButtonState extends State<_AutoButton> {
  void _showErrorDialog() {
    if (Platform.isIOS) {
      showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text('로그인 실패'),
            content: const Text('로그인에 실패했습니다'),
            actions: <Widget>[
              CupertinoDialogAction(
                textStyle: const TextStyle(
                  color: Colors.blue,
                ),
                child: const Text('확인'),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('로그인 실패'),
            content: const Text('로그인에 실패했습니다'),
            actions: <Widget>[
              TextButton(
                child: const Text(
                  '확인',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final googleAuth = await AuthApi().loginGoogle();
        if (googleAuth == null) {
          _showErrorDialog();
        } else {
          print(googleAuth.idToken);
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (builder) => const HomePage()),
            (predicate) => false,
          );
        }
      },
      icon: SvgPicture.asset(
        'assets/icon/ios_neutral_rd_ctn.svg',
        height: 55,
      ),
    );
  }
}