import 'package:controle/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CircularCardTextButtonWidget extends StatelessWidget {
  final String text;
  final Color colors;
  final VoidCallback onTap;

  const CircularCardTextButtonWidget({
    Key? key,
    required this.text,
    required this.colors,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))
          ],
          borderRadius: BorderRadius.circular(50),
          color: AppTheme.colors.whiteAppBackground2),
      width: 68,
      height: 68,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: onTap,
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Text(text),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
