import 'package:controle/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CircularCenterButtomWidget extends StatelessWidget {
  final String text;
  final VoidCallback up;
  final VoidCallback down;
  final VoidCallback left;
  final VoidCallback right;
  final VoidCallback center;
  const CircularCenterButtomWidget(
      {Key? key,
      required this.text,
      required this.up,
      required this.down,
      required this.left,
      required this.right,
      required this.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: 185,
      decoration: BoxDecoration(
        color: AppTheme.colors.whiteAppBackground2,
        borderRadius: const BorderRadius.all(
          Radius.circular(100),
        ),
        border: Border.all(
          color: Colors.transparent,
          style: BorderStyle.solid,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Material(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              color: AppTheme.colors.whiteAppBackground2,
              // child: Padding(
              //   padding: const EdgeInsets.only(top: 1.0),
              child: IconButton(
                splashRadius: 30,
                iconSize: 35,
                icon: const Icon(Icons.arrow_drop_up),
                color: AppTheme.colors.deepBlue,
                onPressed: up,
              ),
              // ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Material(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              color: AppTheme.colors.whiteAppBackground2,
              child: IconButton(
                splashRadius: 30,
                iconSize: 35,
                icon: const Icon(Icons.arrow_left),
                color: AppTheme.colors.deepBlue,
                onPressed: left,
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFA1A1A1),
                      style: BorderStyle.solid,
                    ),
                    // boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))],
                    borderRadius: BorderRadius.circular(50),
                    color: AppTheme.colors.whiteAppBackground2),
                width: 79,
                height: 79,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(40),
                        onTap: center,
                        child: Center(
                          child: Text(
                            text,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ),
                      )),
                )),
            Material(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              color: AppTheme.colors.whiteAppBackground2,
              child: IconButton(
                splashRadius: 30,
                iconSize: 35,
                icon: const Icon(Icons.arrow_right),
                color: AppTheme.colors.deepBlue,
                onPressed: right,
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Material(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              color: AppTheme.colors.whiteAppBackground2,
              child: IconButton(
                splashRadius: 30,
                iconSize: 35,
                icon: const Icon(Icons.arrow_drop_down),
                color: AppTheme.colors.deepBlue,
                onPressed: down,
              ),
            ),
          ])
        ],
      ),
    );
  }
}
