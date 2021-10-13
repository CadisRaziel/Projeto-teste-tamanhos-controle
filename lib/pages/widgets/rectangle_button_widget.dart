import 'package:flutter/material.dart';

class RectangleButtonWidget extends StatelessWidget {
  final Text text;
  final VoidCallback onTap;
  final Color colors;

  const RectangleButtonWidget(
      {Key? key, required this.text, required this.onTap, required this.colors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.91,
      width: 93.33,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
        color: colors,
      ),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: onTap,
              child: Center(child: text),
            )),
      ),
    );
  }
}
