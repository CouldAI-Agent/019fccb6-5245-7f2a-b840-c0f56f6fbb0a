import 'package:flutter/material.dart';
import 'screens/landing_page.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';

void main() {
  runApp(const MediAIApp());
}

class MediAIApp extends StatelessWidget {
  const MediAIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediAI Health Assistant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F766E), // Teal
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F766E),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/dashboard': (context) => const PlaceholderScreen(title: 'Patient Dashboard'),
        '/symptom-checker': (context) => const PlaceholderScreen(title: 'Symptom Checker'),
        '/chat': (context) => const PlaceholderScreen(title: 'AI Health Chatbot'),
        '/reports': (context) => const PlaceholderScreen(title: 'Health Reports'),
        '/emergency': (context) => const PlaceholderScreen(title: 'Emergency Assistance'),
        '/knowledge': (context) => const PlaceholderScreen(title: 'Medical Knowledge'),
        '/admin': (context) => const PlaceholderScreen(title: 'Admin Dashboard'),
      },
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  final String title;
  const PlaceholderScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title, style: Theme.of(context).textTheme.headlineMedium)),
    );
  }
}
