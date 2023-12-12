import 'package:flutter/material.dart';

import 'constants.dart';
import 'screens/chat_room_screen.dart';
import 'theme/color_schemes.dart';

class Wozzap extends StatelessWidget {
  const Wozzap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wozzap',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
          fontFamily: 'Montserrat'),
      darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkColorScheme,
          fontFamily: 'Montserrat'),
      home: ChatRoomScreen(
        chatRoom: chatRoom,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wozzap'),
        elevation: 0,
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Hello, world!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
