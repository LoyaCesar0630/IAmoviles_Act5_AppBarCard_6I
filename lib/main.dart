import 'package:flutter/material.dart';

void main() => runApp(AppCafe());

class AppCafe extends StatelessWidget {
  const AppCafe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafeteria',
      home: Cafe(),
    );
  }
} // fin clase appcafe

class Cafe extends StatelessWidget {
  const Cafe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cafeteria Loya'),
         centerTitle: true,

          backgroundColor: Colors.deepPurpleAccent,
        actions:
        [Icon(Icons.camera),
        Icon(Icons.flight),

  ], 
      ),
      drawer: Drawer(),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          // Graduación de violetas oscuros
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF311B92), // Deep Purple 900
              Color(0xFF512DA8), // Deep Purple 700
            ],
          ),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 15,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Avatar con imagen desde la red
            const CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white24,
              backgroundImage: NetworkImage(
                'https://raw.githubusercontent.com/LoyaCesar0630/IAmoviles_Act5_AppBarCard_6I/refs/heads/main/Loya.png',
              ),
            ),
            const SizedBox(height: 20),
            // Título
            const Text(
              'Cesar Loya',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            // Subtítulo
            const Text(
              'Gerente de ventas',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),
    );
  }
}
