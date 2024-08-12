import 'package:e_learning_app/components/constants.dart';
import 'package:e_learning_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelComeScreen extends StatelessWidget {
  const WelComeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: kBlue,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
                  ),
                  child: Column(
                    children: [
                     Image.asset('assets/images/welcome.png'),
                    ],
                  ),
                ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: kBlue,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        const Text(
                            'Learning everything',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'Learn with pleasure with \n nus, where are you!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black26,
                            height: 1.5,
                            wordSpacing: 2.5,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                              },
                              height: 60,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                              color: kPink,
                              child: const Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
