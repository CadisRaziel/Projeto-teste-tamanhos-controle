import 'package:controle/pages/widgets/circular_Icon_button_widget.dart';
import 'package:controle/pages/widgets/circular_Text2_button_widget.dart';
import 'package:controle/pages/widgets/circular_center_button.dart';
import 'package:controle/pages/widgets/circular_image_button.dart';
import 'package:controle/pages/widgets/circular_text_button_widget.dart';
import 'package:controle/pages/widgets/rectangle_button_widget.dart';
import 'package:controle/pages/widgets/volume_button_widget.dart';
import 'package:controle/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ProjectorControl extends StatefulWidget {
  const ProjectorControl({
    Key? key,
  }) : super(key: key);

  @override
  ProjectorControlState createState() => ProjectorControlState();
}

class ProjectorControlState extends State<ProjectorControl> {
  bool isButtonPressedPower = false;
  bool isButtonPressedSource = false;
  bool isButtonPressedMuted = false;
  bool isButtonPressedHome = false;
  bool isButtonPressedreturn = false;
  bool isButtonPressedFreeze = false;
  bool isButtonPressedVideo = false;
  bool isButtonPressedComputer = false;
  bool isButtonPressedUSB = false;
  bool isButtonPressed123 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.whiteAppBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        color: AppTheme.colors.deepBlue,
                        icon: const Icon(
                          Icons.close_outlined,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ],
                ),
                Row(
                  children: [
                    CircularIconButtoWidget(
                      colors: isButtonPressedPower
                          ? AppTheme.colors.deepBlue
                          : AppTheme.colors.whiteAppBackground2,
                      icon: Icon(Icons.power_settings_new,
                          size: 25,
                          color: isButtonPressedPower
                              ? AppTheme.colors.cyanDark
                              : Colors.black),
                      onTap: () {
                        setState(() {
                          isButtonPressedPower = !isButtonPressedPower;
                        });
                        print('Ligar / Desligar');
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
                      child: CircularTextButtonWidget(
                        colors: isButtonPressedSource
                            ? AppTheme.colors.cyanDark
                            : AppTheme.colors.whiteAppBackground2,
                        text: Text(
                          'Source',
                          style: TextStyle(
                              color: isButtonPressedSource
                                  ? AppTheme.colors.deepBlue
                                  : Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        onTap: () {
                          setState(() {
                            isButtonPressedSource = !isButtonPressedSource;
                          });
                        },
                      ),
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.all(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      children: [
                        VolumeButtomWidget(
                          text: 'Vol',
                          onTap: () {
                            print('Volume Aumentar');
                          },
                          onTap2: () {
                            print('Volume Diminuir');
                          },
                        ),
                      ],
                    ),
                    Stack(children: [
                      CircularCenterButtomWidget(
                        text: 'Enter',
                        center: () => print('Center'),
                        up: () => print('up'),
                        down: () => print('down'),
                        left: () => print('left'),
                        right: () => print('right'),
                      )
                    ]),
                    Stack(
                      children: [
                        VolumeButtomWidget(
                          text: 'Zoom',
                          onTap: () {
                            print('Zoom Aumentar');
                          },
                          onTap2: () {
                            print('Zoom Diminuir');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2, vertical: 15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RectangleButtonWidget(
                      colors: isButtonPressedVideo
                          ? AppTheme.colors.deepBlue
                          : AppTheme.colors.whiteAppBackground2,
                      text: Text(
                        'Video',
                        style: TextStyle(
                            color: isButtonPressedVideo
                                ? AppTheme.colors.cyanDark
                                : Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        setState(() {
                          isButtonPressedVideo = !isButtonPressedVideo;
                        });
                      },
                    ),
                    RectangleButtonWidget(
                      colors: isButtonPressedComputer
                          ? AppTheme.colors.deepBlue
                          : AppTheme.colors.whiteAppBackground2,
                      text: Text(
                        'COMPUTER',
                        style: TextStyle(
                            color: isButtonPressedComputer
                                ? AppTheme.colors.cyanDark
                                : Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        setState(() {
                          isButtonPressedComputer = !isButtonPressedComputer;
                        });
                      },
                    ),
                    RectangleButtonWidget(
                      colors: isButtonPressedUSB
                          ? AppTheme.colors.deepBlue
                          : AppTheme.colors.whiteAppBackground2,
                      text: Text(
                        'USB',
                        style: TextStyle(
                            color: isButtonPressedUSB
                                ? AppTheme.colors.cyanDark
                                : Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        setState(() {
                          isButtonPressedUSB = !isButtonPressedUSB;
                        });
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CircularImageButtonWidget(
                            image: Image.asset(
                              'assets/images/tvcontrol/mutespeaker.png',
                              scale: 25,
                              color: isButtonPressedMuted
                                  ? AppTheme.colors.cyanDark
                                  : Colors.black,
                            ),
                            colors: isButtonPressedMuted
                                ? AppTheme.colors.deepBlue
                                : AppTheme.colors.whiteAppBackground2,
                            onTap: () {
                              setState(() {
                                isButtonPressedMuted = !isButtonPressedMuted;
                              });
                            },
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          CircularImageButtonWidget(
                            image: Image.asset(
                              'assets/images/tvcontrol/return.png',
                              scale: 25,
                              color: isButtonPressedHome
                                  ? AppTheme.colors.cyanDark
                                  : Colors.black,
                            ),
                            colors: isButtonPressedHome
                                ? AppTheme.colors.deepBlue
                                : AppTheme.colors.whiteAppBackground2,
                            onTap: () {
                              setState(() {
                                isButtonPressedHome = !isButtonPressedHome;
                              });
                            },
                          ),
                        ],
                      ),
                      CircularText2ButtonWidget(
                        text: 'Subir',
                        text2: 'Descer',
                        colors: Color(0xFFF5F5F5),
                        onTapSubir: () => print('Subir'),
                        textCenter: 'Páginas',
                        onTapDescer: () => print('Descer'),
                      ),
                      Column(
                        children: [
                          CircularImageButtonWidget(
                            image: Image.asset(
                              'assets/images/tvcontrol/home.png',
                              scale: 70,
                              color: isButtonPressedreturn
                                  ? AppTheme.colors.cyanDark
                                  : Colors.black,
                            ),
                            colors: isButtonPressedreturn
                                ? AppTheme.colors.deepBlue
                                : AppTheme.colors.whiteAppBackground2,
                            onTap: () {
                              setState(() {
                                isButtonPressedreturn = !isButtonPressedreturn;
                              });
                            },
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          CircularImageButtonWidget(
                            image: Image.asset(
                              'assets/images/arcondcontrol/modo1.png',
                              scale: 50,
                              color: isButtonPressedFreeze
                                  ? AppTheme.colors.cyanDark
                                  : Colors.black,
                            ),
                            colors: isButtonPressedFreeze
                                ? AppTheme.colors.deepBlue
                                : AppTheme.colors.whiteAppBackground2,
                            onTap: () {
                              setState(() {
                                isButtonPressedFreeze = !isButtonPressedFreeze;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RectangleButtonWidget(
                        colors: isButtonPressed123
                            ? AppTheme.colors.deepBlue
                            : AppTheme.colors.whiteAppBackground2,
                        text: Text(
                          '123',
                          style: TextStyle(
                              color: isButtonPressed123
                                  ? AppTheme.colors.cyanDark
                                  : Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        onTap: () {
                          setState(() {
                            isButtonPressed123 = !isButtonPressed123;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 155,
                        child: ElevatedButton(
                          onPressed: () {
                            print('Concluir');
                          },
                          child: Text('Concluir'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(8), // <-- Radius
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
