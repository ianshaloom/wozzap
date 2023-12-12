import 'package:flutter/material.dart';

import 'app.dart';
import 'repositories/message_repository.dart';
import 'services/api_client.dart';
import 'services/web_socket_client.dart';

void main() async {
  // widget flutter binding
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Wozzap());
}

final apiClient = ApiClient(tokenProvider: () async {
  return '';
});

final webSocketClient = WebSocketClient();

final messageRepository = MessageRepository(apiClient: apiClient, webSocketClient: webSocketClient);
