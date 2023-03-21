import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(
        children: <Widget>[
          Column(
            children: const <Widget>[
              Text('\$1000.00'),
              Text('Balanço disponível')
            ],
          ),
          const Icon(
            Icons.account_circle,
          )
        ],
      ),
    );
  }
}
