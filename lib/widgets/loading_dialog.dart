import 'package:flutter/material.dart';

class LoadingDialogWidget extends StatelessWidget {
  final String? message;

  const LoadingDialogWidget({super.key, 
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //circular prograss bar
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 14),
            child: const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.pinkAccent),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            // ignore: prefer_interpolation_to_compose_strings
            message.toString() + ", Please wait...",
          ),
        ],
      ),
    );
  }
}
