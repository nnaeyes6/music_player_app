import 'package:flutter/material.dart';

class KButton extends StatelessWidget {
  const KButton(
      {super.key,
      required this.onClick,
      required this.text,
      required this.icon,
      this.size});

  final VoidCallback? onClick;
  final String text;
  final Icon icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 40,
      width: size ?? 160,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton.icon(
        onPressed: () {
          onClick!.call();
        },
        icon: icon,
        label: Text(
          text,
          style: const TextStyle(
              color: Colors.white60, fontWeight: FontWeight.w600, fontSize: 12),
        ),
      ),
    );
  }
}
