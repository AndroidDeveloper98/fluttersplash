import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: size.width * 0.6,
      decoration: BoxDecoration(
        color: const Color(0xFFeaeaea),
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
