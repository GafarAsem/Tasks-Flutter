import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  Future<void> _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);

    if (context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.deepPurple.shade300.withOpacity(0.3),
              Colors.blue.shade400.withOpacity(0.3),
              Colors.cyan.shade300.withOpacity(0.3),
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.settings,
                          size: 80,
                          color: Colors.deepPurple.shade300,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'الإعدادات',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple.shade700,
                          ),
                        ),
                        const SizedBox(height: 30),
                        ListTile(
                          leading: Icon(Icons.notifications, color: Colors.deepPurple.shade400),
                          title: const Text('الإشعارات', textDirection: TextDirection.rtl),
                          trailing: Switch(
                            value: true,
                            onChanged: (value) {},
                            activeThumbColor: Colors.deepPurple.shade600,
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          leading: Icon(Icons.dark_mode, color: Colors.deepPurple.shade400),
                          title: const Text('الوضع الليلي', textDirection: TextDirection.rtl),
                          trailing: Switch(
                            value: false,
                            onChanged: (value) {},
                            activeThumbColor: Colors.deepPurple.shade600,
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          leading: Icon(Icons.language, color: Colors.deepPurple.shade400),
                          title: const Text('اللغة', textDirection: TextDirection.rtl),
                          trailing: const Text('العربية', textDirection: TextDirection.rtl),
                        ),
                        const Divider(),
                        const SizedBox(height: 20),
                        ElevatedButton.icon(
                          onPressed: () => _logout(context),
                          icon: const Icon(Icons.logout),
                          label: const Text('تسجيل الخروج'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red.shade400,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
