import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    this.function,
    this.icon,
  }) : super(key: key);
  final Function()? function;
  final icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: ClipRect(
        child: Container(
            color: Colors.blue, height: 50, width: 50, child: Icon(icon)),
      ),
    );
  }
}
