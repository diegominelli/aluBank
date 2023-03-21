import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;
  const BoxCard({Key? key, required this.boxContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: boxContent,
    );
  }
}
