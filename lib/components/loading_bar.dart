import 'package:flutter/material.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({
    this.borderLeft = 12,
    this.heightBoxOne = 12,
    this.heightBoxTwo = 12,
    this.borderRight = 12,
    super.key,
    required this.widthBoxOne,
    required this.widthBoxTwo,
  });

  final double widthBoxOne;
  final double heightBoxOne;

  final double widthBoxTwo;
  final double heightBoxTwo;

  final double borderLeft;
  final double borderRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 16, 97, 219),
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(borderLeft),
                right: Radius.circular(borderRight),
              )),
          width: widthBoxOne,
          height: heightBoxOne,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius:
                  BorderRadius.horizontal(right: Radius.circular(borderRight))),
          width: widthBoxTwo,
          height: heightBoxTwo,
        )
      ],
    );
  }
}
