import 'package:controle/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CircularText2ButtonWidget extends StatelessWidget {
  final String text;
  final String text2;
  final String textCenter;
  final Color colors;
  final VoidCallback onTapSubir;
  final VoidCallback onTapDescer;

  const CircularText2ButtonWidget(
      {Key? key,
      required this.text,
      required this.colors,
      required this.onTapSubir,
      required this.textCenter,
      required this.onTapDescer,
      required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 173.01,
      width: 75.42,
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
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 5, right: 5),
        child: Column(
          children: [
            Container(
              height: 59.24,
              width: 59.47,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: colors,
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: onTapSubir,
                  child: Center(
                    child: Text(
                      text,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Column(
              children: [
                Text(textCenter,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 59.24,
              width: 59.47,
              decoration: BoxDecoration(
                // boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))],
                borderRadius: BorderRadius.circular(50),
                color: colors,
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: onTapDescer,
                  child: Center(
                    child: Text(
                      text2,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
