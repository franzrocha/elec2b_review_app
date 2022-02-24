import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SafeDial extends StatelessWidget {
  final int startingValue;
  final Function()? onIncrement;
  final Function()? onDecrement;
  const SafeDial(
      {Key? key,
      required this.startingValue,
      this.onIncrement,
      this.onDecrement})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(6),
        constraints: const BoxConstraints(minHeight: 60),
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.greenAccent,
         ),
        child: Column(
          children: [
            IconButton(
                onPressed: onIncrement,
                icon: const Icon(CupertinoIcons.chevron_up),
                ),
            Expanded(
                child: Text(
              "$startingValue",
              textAlign: TextAlign.center,
            )),
            IconButton(
                onPressed: onDecrement,
                icon: const Icon(CupertinoIcons.chevron_down)),
          ],
        )
        );
  }
}