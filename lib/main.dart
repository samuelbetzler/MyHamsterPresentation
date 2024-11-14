import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final color = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: color,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/hamster.jpg'),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Mrs.Umney',
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Pequeña Princesa'.toLowerCase(),
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
              SizedBox(
                height: 40.0,
                width: 120.0,
                child: Divider(
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
              infoCard(
                icon: Icons.favorite,
                text: 'Me encantan las semillas y manzanas',
              ),
              infoCard(
                icon: Icons.people,
                text: 'Tengo una familia que me adora',
              ),
              infoCard(
                icon: Icons.cake,
                text: 'Tengo 2 años de edad',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget infoCard({required IconData icon, required String text}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            icon,
            size: 30.0,
            color: color.shade400,
          ),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              color: color.shade400,
            ),
          ),
        ),
      ),
    );
  }
}