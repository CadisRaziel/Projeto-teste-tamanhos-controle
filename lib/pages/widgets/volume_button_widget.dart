import 'package:controle/themes/app_theme.dart';
import 'package:flutter/material.dart';

class VolumeButtomWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final VoidCallback onTap2;

  const VolumeButtomWidget(
      {Key? key, required this.text, required this.onTap, required this.onTap2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 169.25,
      width: 45.37,
      decoration: BoxDecoration(
        color: AppTheme.colors.whiteAppBackground2,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: Colors.transparent,
          style: BorderStyle.solid,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Material(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: AppTheme.colors.whiteAppBackground2,
            child: Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: IconButton(
                splashRadius: 30,
                iconSize: 25,
                icon: const Icon(Icons.add),
                color: AppTheme.colors.deepBlue,
                onPressed: onTap,
              ),
            ),
          ),
          Material(
            color: AppTheme.colors.whiteAppBackground2,
            child: Text(
              text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          Material(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: AppTheme.colors.whiteAppBackground2,
            child: Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: IconButton(
                  splashRadius: 30,
                  iconSize: 25,
                  icon: const Icon(Icons.minimize),
                  color: AppTheme.colors.deepBlue,
                  onPressed: onTap2),
            ),
          ),
        ],
      ),
    );
  }
}
