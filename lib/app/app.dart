import 'package:flow_builder/flow_builder.dart';
import 'package:flowbuilder_modal/app/app_state.dart';
import 'package:flowbuilder_modal/screens/home_screen.dart';
import 'package:flowbuilder_modal/screens/login_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flow Builder Modal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlowBuilder<AppState>(
        state: const AppState(),
        onGeneratePages: (state, pages) {
          return [
            const MaterialPage(child: LoginScreen()),
            if (state.loggedIn) const MaterialPage(child: HomeScreen()),
          ];
        },
      ),
    );
  }
}
