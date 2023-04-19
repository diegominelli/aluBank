import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da Conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const BoxCard(boxContent: _AccountPointsContent())
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Pontos totais:'),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, top: 16.0),
              child: Text(
                '3000',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const ContentDivision(),
            Text(
              'Objetivos:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 4.0),
                  child: ColorDot(
                    color: ThemeColors.recentActivity['delivery'],
                  ),
                ),
                const Text('Entrega grátis: 150000 pts')
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 4.0),
                  child: ColorDot(
                    color: ThemeColors.recentActivity['streaming'],
                  ),
                ),
                const Text('1 mês de Streaming: 300000 pts')
              ],
            ),
          ],
        ),
      ],
    );
  }
}
