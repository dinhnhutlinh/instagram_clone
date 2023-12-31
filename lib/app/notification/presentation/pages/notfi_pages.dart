import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Notifications'),
      ),
      body: ListView(
          padding: const EdgeInsets.only(
            top: 8,
            left: 16,
            right: 16,
          ),
          children: const [
            SizedBox(
              height: 8,
            ),
            Text('Early'),
          ]),
    );
  }
}
