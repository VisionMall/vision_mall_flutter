part of '../main_page.dart';

class _FloatingActionButton extends StatefulWidget {
  const _FloatingActionButton();

  @override
  State<_FloatingActionButton> createState() => _FloatingActionButtonState();
}

class _FloatingActionButtonState extends State<_FloatingActionButton> {
  final SpeechToText _speechToText = SpeechToText();
  String _lastWords = '';
  bool circle = false;
  bool _isLoading = false; // New variable to control loading state

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  /// 앱에서 한 번만 음성 인식을 초기화
  void _initSpeech() async {
    await _speechToText.initialize();
    setState(() {});
  }

  /// 음성 입력을 시작
  void _startListening() async {
    setState(() {
      _isLoading = true; // Show loading indicator
    });
    await _speechToText.listen(
      onResult: _onSpeechResult,
      localeId: 'ko_KR',
    );
    setState(() {
      _isLoading = false; // Hide loading indicator
    });
  }

  /// 듣기를 멈추고 최종 결과를 출력
  void _stopListening() async {
    setState(() {
      _isLoading = true; // Show loading indicator
      circle = true;
    });
    await _speechToText.stop();
    setState(() {
      _isLoading = false; // Hide loading indicator
      circle = false;
      print("최종 인식된 단어: $_lastWords");
      searchTextEditingControlle.text = _lastWords;
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (builder) => const SearchPage(),
      ),
    );
  }

  /// 인식된 단어를 처리하는 콜백
  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
      print("중간 인식된 단어: $_lastWords");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        FloatingActionButton(
          onPressed: _isLoading
              ? null // Disable button when loading
              : (_speechToText.isNotListening ? _startListening : _stopListening),
          backgroundColor: _speechToText.isNotListening ? Colors.white : Colors.blue,
          elevation: 4,
          child: Icon(
            Icons.question_answer,
            color: _speechToText.isNotListening ? Colors.blue : Colors.white,
          ),
        ),
        if (_isLoading)
          Container(
            color: Colors.white,
            child: const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),
      ],
    );
  }
}
