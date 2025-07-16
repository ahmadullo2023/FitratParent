import 'package:flutter/material.dart';

class CodeItem extends StatelessWidget {
  final String text;
  const CodeItem({
    super.key,
    required this.text,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        color: Color(0xffF9FAFB),
        borderRadius: BorderRadius.circular(12),
        border: Border(
          top: BorderSide(color: Color(0xffF3F4F6), width: 1.5),
          left: BorderSide(color: Color(0xffF3F4F6), width: 1.5),
          right: BorderSide(color: Color(0xffF3F4F6), width: 1.5),
          bottom: BorderSide(color: Color(0xffF3F4F6), width: 3),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff9DA4AE),
          ),
        ),
      ),
    );;

  }
}