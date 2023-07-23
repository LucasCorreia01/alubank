import 'package:alubank/components/color_dot.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Color color;
  final String text;
  const ListItem({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: ColorDot(
              color: color
            ),
          ),
          Text(text, style: Theme.of(context).textTheme.bodyMedium,)
        ],
      ),
    );
  }
}
