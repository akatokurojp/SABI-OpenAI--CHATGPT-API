import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nlp/speech_screen.dart';
import 'package:nlp/tts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent),);
  TextToSpeech.initTTS();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SpeechScreen(),
      debugShowCheckedModeBanner: false,
      title: 'Sabi Assistant -OpenAI API GPT',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
    
  }

}

