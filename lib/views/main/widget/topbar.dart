part of '../main_page.dart';

class _Topbar extends StatelessWidget implements PreferredSizeWidget {
  const _Topbar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 100,
      leading: Container(
        alignment: Alignment.center,
        child: const Text(
          'BET',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onLongPress: () => tts.speak('검색'),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (builder) => const SearchPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
