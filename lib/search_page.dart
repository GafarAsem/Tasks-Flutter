import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.search),
            title: const Text('البحث'),
            subtitle: const Text('صفحة البحث'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // يمكنك إضافة وظيفة عند الضغط على العنصر
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('الرئيسية'),
            subtitle: const Text('الصفحة الرئيسية'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // يمكنك إضافة وظيفة عند الضغط على العنصر
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('الاعدادات'),
            subtitle: const Text('صفحة الاعدادت'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // يمكنك إضافة وظيفة عند الضغط على العنصر
            },
          ),
        ],
      ),
    );
  }
}
