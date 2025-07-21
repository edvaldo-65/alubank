import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;

  const BoxCard({super.key, required this.boxContent});

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        borderRadius: BorderRadius.circular(10),
        // color: Theme.of(context).cardColor,
        // color: Color.fromRGBO(66, 66, 66, 1.0),
        color: Color.fromRGBO(48, 48, 48, 1.0),
      ),
      child: boxContent,
    );
  }
}
