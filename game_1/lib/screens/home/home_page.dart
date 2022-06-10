import 'package:flutter/material.dart';
import 'package:game/widget/home/my_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double playerX = 0;
  double playerY = 1;
  void moveLeft() {
    setState(() {
      playerX -= 0.1;
    });
  }

  void moveRight() {
    setState(() {
      playerX += 0.1;
    });
  }

  void moveUp() {
    setState(() {
      playerY -= 0.1;
    });
  }

  void moveDown() {
    setState(() {
      playerY += 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.green,
              child: Center(
                child: Stack(children: [
                  Container(
                    alignment: Alignment(playerX, playerY),
                    child: Container(
                      height: 70,
                      width: 70,
                      color: Colors.red,
                    ),
                  )
                ]),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    function: moveLeft,
                    icon: Icons.chevron_left_outlined,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyButton(
                          icon: Icons.arrow_upward_rounded, function: moveUp),
                      MyButton(
                          icon: Icons.arrow_downward_sharp, function: moveDown),
                    ],
                  ),
                  MyButton(
                    icon: Icons.chevron_right_outlined,
                    function: moveRight,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
