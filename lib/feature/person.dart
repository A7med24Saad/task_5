import 'package:flutter/material.dart';
import 'package:task_5/core/app_colors.dart';

class person extends StatelessWidget {
  const person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(alignment: Alignment.center, children: [
              CircleAvatar(
                radius: 50,
                child: Image.asset('assets/Me.jpg'),
              ),
              const Positioned(
                bottom: 0,
                right: 0,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            Divider(
              color: AppColors.tapcolorafter,
              height: 0.7,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 30,
              width: 300,
              decoration: BoxDecoration(
                  color: AppColors.container1,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  'Ahmed Saad Youssef',
                  style: TextStyle(color: AppColors.tapcolorafter),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
