import 'package:flutter/material.dart';
import 'package:task_5/core/app_colors.dart';

class notfication extends StatelessWidget {
  const notfication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      body: const Text(
        'Notfication',
        style: TextStyle(color: Colors.green),
      ),
    );
  }
}
