import 'package:flutter/material.dart';

class OneSection extends StatefulWidget {
  const OneSection({Key? key}) : super(key: key);

  @override
  State<OneSection> createState() => _OneSectionState();
}

class _OneSectionState extends State<OneSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        color: Colors.green,
      ),
    );
  }
}
