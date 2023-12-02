import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() {
    return _NewMessage();
  }
}

class _NewMessage extends State<NewMessage> {
  var _messageController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _messageController.dispose();
  }

  void _submitMessage() {
    final enteredMessage = _messageController.text;

    if (enteredMessage.trim().isEmpty) {
      return;
    }

    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 1, bottom: 34),
      child: Row(children: [
        const Expanded(
          child: TextField(
            textCapitalization: TextCapitalization.sentences,
            autocorrect: true,
            enableSuggestions: true,
            decoration: InputDecoration(labelText: "Send a message.."),
          ),
        ),
        IconButton(
          onPressed: _submitMessage,
          icon: const Icon(Icons.send),
          color: Theme.of(context).colorScheme.primary,
        ),
      ]),
    );
  }
}
