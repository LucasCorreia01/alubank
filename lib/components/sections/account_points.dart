import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/components/list_item.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          BoxCard(boxContent: _AccountPoints())
        ],
      ),
    );
  }
}

class _AccountPoints extends StatelessWidget {
  const _AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Pontos totais:',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            '3000',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: ContentDivision(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Objetivos:',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const ListItem(color: Color.fromRGBO(250, 0, 112, 1), text: 'Entrega grátis: 15000pts'),
        const ListItem(color: Color.fromRGBO(75, 89, 191, 1), text: '1 mês de streaming: 30000pts',)
      ],
    );
  }
}
