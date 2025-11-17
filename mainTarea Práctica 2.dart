import 'package:flutter/material.dart';

void main() {
  runApp(const HolaMundoApp());
}

class HolaMundoApp extends StatelessWidget {
  const HolaMundoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hola Mundo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(fontSize: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 140, 132, 163),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      home: const HolaMundoPage(),
    );
  }
}

class HolaMundoPage extends StatelessWidget {
  const HolaMundoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola Mundo'),
        centerTitle: true,
        backgroundColor: theme.colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 8, offset: const Offset(0,4)),
                ],
              ),
              child: Text(
                '¡Hola Mundo!',
                style: theme.textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            Text('Proyecto básico de Steeven Proaño', style: theme.textTheme.titleLarge),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('¡Botón pulsado!')),
                );
              },
              child: const Text('Presióname'),
            ),
          ],
        ),
      ),
    );
  }
}
