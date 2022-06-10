import 'package:flutter/material.dart';
import 'package:game/screens/home/one_section.dart';
import 'package:game/screens/home/second_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [OneSection(), SecondSection()],
      ),
    );
  }
}