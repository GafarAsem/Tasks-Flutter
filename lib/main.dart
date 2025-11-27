import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV Gafar ',
      theme: ThemeData(primarySwatch: Colors.teal, useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CV in Flutter'),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          // Profile Picture and Name Section
          const Center(
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.tealAccent,
                  // Use a placeholder icon since image asset setup is complex
                  child: Icon(Icons.person, size: 70, color: Colors.teal),
                ),
                SizedBox(height: 10),
                Text(
                  "GAFAR ASEM BIN TALEB",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "Aspiring Mobile Developer (Flutter Beginner)",
                  style: TextStyle(fontSize: 16, color: Colors.teal),
                ),
              ],
            ),
          ),

          const Divider(height: 40, thickness: 2),

          // Contact Info Section (Using ListTile - learned this week!)
          _buildSectionTitle('📞 Contact Info'),
          _buildContactItem(Icons.email, 'Gafarasem255@gmail.com'),
          _buildContactItem(
            Icons.phone,
            '+967 771353202 (Tried calling using URL launcher)',
          ),
          _buildContactItem(Icons.location_on, 'Hadramout , Yemen'),

          const Divider(height: 40, thickness: 1),

          // Skills Section (Simple Text)
          _buildSectionTitle('💻 My Skills in Flutter'),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: <Widget>[
                Chip(label: Text('Dart Basics')),
                Chip(label: Text('Stateless Widgets')),
                Chip(label: Text('Stateful Widgets')),
                Chip(label: Text('Layouts (Row, Column)')),
                Chip(label: Text('ListView')),
                Chip(label: Text('Navigation')),
              ],
            ),
          ),

          const Divider(height: 40, thickness: 1),

          // Education Section (Using Card for better visual separation)
          _buildSectionTitle('🎓 Education'),
          Card(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Computer Science',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'University Syoun 2025',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 10.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.teal,
        ),
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(text),
      dense: true,
    );
  }
}
