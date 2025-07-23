import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

import '../../themes/themes_colors.dart';
import '../color_dot.dart';
import '../content_division.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.only(left: 16, bottom: 8),
            child: Text('Pontos da Conta',
              style: Theme.of(context).textTheme.titleMedium,
            )
        ),
    Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      child: BoxCard(boxContent: _AccountPointsContent()),
    ),

      ],
    );
    }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text('Pontos totais:'),
          ),
          Text('3000', style: Theme.of(context).textTheme.bodyLarge,),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: ContentDivision(),
          ),
          Text('Objetivos:', style: TextStyle(fontSize: 25),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row
                (children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 4.0),
                  child: ColorDot(color: ThemeColors.recentActivity['delivery']),
                ),
                  Text('Entrega grátis: 15000pts.'),
              ],),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row
                (children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 4.0),
                  child: ColorDot(color: ThemeColors.recentActivity['streaming']),
                ),
                Text('1 Mês de streaming: 30000 pontos.'),
              ],),

            ],
          ),
        ],
      ),
    );
  }
}

