import 'package:flutter/material.dart';

class InfoSnackBar extends StatelessWidget {
  const InfoSnackBar({
    super.key,
    required this.image,
  });

  final Image image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: image,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color.fromARGB(255, 16, 97, 219),
        ),
        width: 100,
        height: 42,
        child: const Icon(Icons.touch_app),
      ),
    );
  }
}
