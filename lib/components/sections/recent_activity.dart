import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:flutter/material.dart';
import 'package:alubank/themes/themes_colors.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}
class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row
              (children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(color: ThemeColors.recentActivity['spent']),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Saída'),
                  Text('\$9900.97', style: Theme.of(context).textTheme.bodyLarge,)
                ],
              )
            ],),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(color: ThemeColors.recentActivity['income']),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Entrada'),
                  Text('\$9332.35', style: Theme.of(context).textTheme.bodyLarge,)
                ],
              )
            ],),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top:16, bottom: 8.0),
          child: Text('Limite de gastos: \$432.90'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: LinearProgressIndicator(
            value: 0.3,
            minHeight: 8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: ContentDivision(),
        ),
        Text('Esse mês você gastou \$1500.00 com jogos.\nDeixe de ser um \"Viciado"!\nTente abaixar esse custo!'),
        TextButton(onPressed: (){}, child: Text('Diga-me como!', style: TextStyle(fontSize: 16),)),
      ],
    );
  }
}


