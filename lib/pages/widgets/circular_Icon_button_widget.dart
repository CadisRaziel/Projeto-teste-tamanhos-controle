import 'package:flutter/material.dart';

class CircularIconButtoWidget extends StatelessWidget {
  final Icon icon;
  final Color colors;
  final VoidCallback onTap;

  const CircularIconButtoWidget(
      {Key? key, required this.icon, required this.colors, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.66,
      width: 52.8,
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
          child: Center(child: icon),
        ),
      ),
    );
  }
}
