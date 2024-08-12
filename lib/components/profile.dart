import 'package:e_learning_app/components/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Julia',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Oday is a good day\nto learn something new!',
              style: TextStyle(
                color: Colors.black26,
                wordSpacing: 2.5,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: kPurple,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset('assets/images/profile.png'),
            ),
          ],
        ),
      ],
    );
  }
}
