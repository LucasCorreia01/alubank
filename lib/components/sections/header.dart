import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: ThemeColors.headerGradient,
          ),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0, left: 16, right: 16, bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(TextSpan(text: '\$', children: <TextSpan>[
                  TextSpan(
                    text: '1000.00',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ])),
                Text(
                  'Balanço disponível',
                ),
              ],
            ),
            Icon(
              Icons.account_circle,
              size: 42,
            ),
          ],
        ),
      ),
    );
  }
}
