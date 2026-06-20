import 'package:flutter/material.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/base/default_bloc.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends BasePageState<ChatPage, DefaultBloc> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(body: Center(child: Text("ChatPage")));
  }
}
