import 'package:alubank/components/box_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../content_division.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.all(16),
      child: BoxCard(boxContent: _AccountPoints()),
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
        Text('Pontos totais:'),
        Text('3000', style: Theme.of(context).textTheme.bodyLarge,),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: ContentDivision(),
        ),
      ],
    );
  }
}

