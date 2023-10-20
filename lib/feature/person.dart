import 'package:flutter/material.dart';
import 'package:task_5/core/app_colors.dart';

class person extends StatelessWidget {
  const person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      body: const Text(
        'Person',
        style: TextStyle(color: Colors.green),
      ),
    );
  }
}
