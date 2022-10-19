import 'package:flutter/material.dart';
import 'package:music_app/core/constants/colors.dart';

class SpsButton extends StatelessWidget {
  const SpsButton(
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
        color: AppColor.homeIconColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.black54, fontWeight: FontWeight.w600, fontSize: 12),
        ),
      ),
    );
  }
}
