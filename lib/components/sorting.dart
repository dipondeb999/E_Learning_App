import 'package:e_learning_app/components/constants.dart';
import 'package:flutter/material.dart';

class Sorting extends StatelessWidget {
  const Sorting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: kPink,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            'Top',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: const Text(
            'Design',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: const Text(
            'Marketing',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Container(
          height: 20,
          child: Image.asset('assets/icons/sort.png'),
        ),
      ],
    );
  }
}
