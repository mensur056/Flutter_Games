import 'package:flutter/material.dart';

class SecondSection extends StatefulWidget {
  const SecondSection({Key? key}) : super(key: key);

  @override
  State<SecondSection> createState() => _SecondSectionState();
}

class _SecondSectionState extends State<SecondSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRect(
              child: Container(
                  color: Colors.blue,
                  height: 50,
                  width: 50,
                  child: const Icon(Icons.chevron_left_outlined)),
            ),
            ClipRect(
              child: Container(
                color: Colors.blue,
                height: 50,
                width: 50,
                child: const Icon(Icons.arrow_upward_sharp),
              ),
            ),
            ClipRect(
              child: Container(
                  color: Colors.blue,
                  height: 50,
                  width: 50,
                  child: const Icon(
                    Icons.chevron_right_outlined,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
