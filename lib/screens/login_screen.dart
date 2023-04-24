import 'package:flow_builder/flow_builder.dart';
import 'package:flowbuilder_modal/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../app/app_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 64),
            ElevatedButton(
              onPressed: () => context
                  .flow<AppState>()
                  .update((appState) => appState.copyWith(loggedIn: true)),
              child: const Text('Login (Flow Builder)'),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialWithModalsPageRoute<MaterialPageRoute<dynamic>>(
                      builder: (BuildContext context) => const HomeScreen())),
              child: const Text('Skip Login (Navigator)'),
            ),
          ],
        ),
      ),
    );
  }
}
