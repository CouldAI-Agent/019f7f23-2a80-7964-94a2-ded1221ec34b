import 'package:flutter/material.dart';
import 'package:social_chat/screens/main_screen.dart';

void main() {
  runApp(const SocialChatApp());
}

class SocialChatApp extends StatelessWidget {
  const SocialChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
      },
    );
  }
}
