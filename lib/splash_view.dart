import 'package:flutter/material.dart';
import 'package:task_5/core/app_colors.dart';
import 'package:task_5/feature/HomeView.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => SplashscreenState();
}

class SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/appphoto.png',
              width: 250,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Insight News',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Stay informed anytime,anywhere',
              style: TextStyle(color: Colors.white38),
            ),
          ],
        ),
      ),
    );
  }
}
