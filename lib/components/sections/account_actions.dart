import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 8),
            child: Text(
              'Ações da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){},
                  child: const BoxCard(
                      boxContent: _AccountActionContent(
                    icon: Icon(Icons.account_balance_wallet),
                    text: 'Depositar',
                  )),
                ),
                InkWell(
                  onTap: (){},
                  child: const BoxCard(
                      boxContent: _AccountActionContent(
                    icon: Icon(Icons.cached),
                    text: 'Transferir',
                  )),
                ),
                InkWell(
                  onTap: (){},
                  child: const BoxCard(
                      boxContent: _AccountActionContent(
                    icon: Icon(Icons.center_focus_strong),
                    text: 'Ler',
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _AccountActionContent extends StatelessWidget {
  final Icon icon;
  final String text;
  const _AccountActionContent(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      child: Column(
        children: [Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: icon,
        ), Text(text)],
      ),
    );
  }
}
