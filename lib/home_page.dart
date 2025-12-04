
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _firstFieldController = TextEditingController();
  final TextEditingController _secondFieldController = TextEditingController();

  void _copyText() {
    setState(() {
      _secondFieldController.text = _firstFieldController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _firstFieldController,
              decoration: const InputDecoration(
                labelText: 'الحقل الأول',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _copyText,
              child: const Text('نسخ القيمة'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _secondFieldController,
              decoration: const InputDecoration(
                labelText: 'الحقل الثاني',
                border: OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ],
        ),
      ),
    );
  }
}
