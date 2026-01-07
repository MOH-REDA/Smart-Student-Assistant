import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:student_assistant/models/rag_response.dart';
import 'package:student_assistant/services/rag_api.dart';

class ChatMessage {
  final String text;
  final bool isUser;

  ChatMessage({required this.text, required this.isUser});
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<AnimatedListState> _listKey =
  GlobalKey<AnimatedListState>();

  final List<ChatMessage> _messages = [
    ChatMessage(
      text:
      'Hello 👋 I am your Smart Student Assistant. How can I help you?',
      isUser: false,
    ),
  ];

  late RagApi api;
  bool _isTyping = false;

  @override
  void initState() {
    super.initState();
    api = RagApi(
      Dio(
        BaseOptions(headers: {'Content-Type': 'application/json'}),
      ),
    );
  }

  void _insertMessage(ChatMessage message) {
    _messages.insert(0, message);
    _listKey.currentState?.insertItem(
      0,
      duration: const Duration(milliseconds: 300),
    );

    // Always scroll to latest message
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> _sendMessage() async {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    _controller.clear();
    setState(() => _isTyping = true);

    _insertMessage(ChatMessage(text: text, isUser: true));

    try {
      final RagResponse resp =
      await api.askQuestion({"question": text});

      _insertMessage(
        ChatMessage(text: resp.answer, isUser: false),
      );
    } catch (e) {
      _insertMessage(
        ChatMessage(
          text: '⚠ Failed to connect to the chatbot.',
          isUser: false,
        ),
      );
    }

    setState(() => _isTyping = false);
  }

  Widget _chatBubble(
      ChatMessage message,
      Animation<double> animation,
      ) {
    final slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.15),
      end: Offset.zero,
    ).animate(animation);

    final theme = Theme.of(context);

    return FadeTransition(
      opacity: animation,
      child: SlideTransition(
        position: slideAnimation,
        child: Align(
          alignment: message.isUser
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: Container(
            margin:
            const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
            padding: const EdgeInsets.all(12),
            constraints: const BoxConstraints(maxWidth: 300),
            decoration: BoxDecoration(
              color: message.isUser
                  ? theme.colorScheme.secondary
                  : theme.primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              message.text,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        centerTitle: true,
        elevation: 0,
        title: const Text('Chatbot'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedList(
                key: _listKey,
                controller: _scrollController,
                reverse: true,
                padding:
                const EdgeInsets.fromLTRB(12, 24, 12, 100),
                initialItemCount: _messages.length,
                itemBuilder: (context, index, animation) {
                  return _chatBubble(
                    _messages[index],
                    animation,
                  );
                },
              ),
            ),
          ),

          if (_isTyping)
            Padding(
              padding:
              const EdgeInsets.only(left: 12, bottom: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Assistant is typing...',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall,
                ),
              ),
            ),

          Padding(
            padding:
            const EdgeInsets.fromLTRB(12, 8, 12, 24),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onSubmitted: (_) => _sendMessage(),
                    decoration: const InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
