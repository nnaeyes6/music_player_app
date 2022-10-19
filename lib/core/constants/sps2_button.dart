import 'package:flutter/material.dart';

class SpsButtonBlk extends StatelessWidget {
  const SpsButtonBlk(
      {super.key, required this.onClick, required this.text, this.size});

  final VoidCallback? onClick;
  final String text;
  final double? size;
  final bool inColorBlack = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 40,
      width: size ?? 160,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white60, fontWeight: FontWeight.w600, fontSize: 12),
        ),
      ),
    );
  }
}
