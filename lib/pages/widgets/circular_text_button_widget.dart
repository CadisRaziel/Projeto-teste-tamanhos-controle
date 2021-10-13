import 'package:flutter/material.dart';

class CircularTextButtonWidget extends StatelessWidget {
  final Text text;
  final Color colors;
  final VoidCallback onTap;

  const CircularTextButtonWidget(
      {Key? key, required this.text, required this.colors, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.43,
      width: 40.54,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))
        ],
        borderRadius: BorderRadius.circular(50),
        color: colors,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(40),
          onTap: onTap,
          child: Center(child: text),
        ),
      ),
    );
  }
}
