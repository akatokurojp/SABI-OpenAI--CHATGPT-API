import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeech {
  static FlutterTts tts = FlutterTts();

  static initTTS() async {
    print(await tts.getLanguages);
    tts.setLanguage("en-UK");
    tts.setPitch(10.0);
  }

  static speak(String text) async {
    tts.setStartHandler(() {
      print("TTS has started");
    });
    tts.setCompletionHandler(() {
      print("Completed");
    });

    tts.setErrorHandler((message) {
      print(message);
    });
    await tts.awaitSpeakCompletion(true);
    tts.speak(text);
  }
}
