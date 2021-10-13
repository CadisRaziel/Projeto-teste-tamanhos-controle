import 'package:flutter/material.dart';

class CircularImageButtonWidget extends StatelessWidget {
  final Image image;
  final Color colors;
  final VoidCallback onTap;

  const CircularImageButtonWidget({
    Key? key,
    required this.image,
    required this.colors,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))
          ], borderRadius: BorderRadius.circular(50), color: colors),
          width: 59.47,
          height: 59.24,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: onTap,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    image,
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
