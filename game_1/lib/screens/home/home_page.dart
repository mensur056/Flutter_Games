import 'package:flutter/material.dart';
import 'package:game/widget/home/my_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double playerX = 0;
  void moveLeft() {}
  void moveRight() {}
  void moveUp() {}

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
                    alignment: Alignment(playerX, 1),
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
                  MyButton(icon: Icons.arrow_upward_rounded, function: moveUp),
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
