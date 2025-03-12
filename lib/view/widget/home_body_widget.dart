import 'package:flutter/material.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          20,
          (index) => Container(
            height: 100,
            color: index.isEven ? Colors.red : Colors.green,
          ),
        )
      ],
    );
  }
}