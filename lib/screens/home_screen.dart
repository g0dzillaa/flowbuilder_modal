import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'modal_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 64),
            ElevatedButton(
              onPressed: () => showCupertinoModalBottomSheet(
                context: context,
                builder: (context) => const ModalScreen(),
              ),
              child: const Text('Show Modal'),
            ),
            const SizedBox(height: 64),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
