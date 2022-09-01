import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PieScreen extends StatefulWidget {
  const PieScreen({Key? key}) : super(key: key);

  @override
  State<PieScreen> createState() => _PieScreenState();
}

class _PieScreenState extends State<PieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Report",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: const Text('C'),
              ),
              label: const Text('Chip'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: const Text('C'),
              ),
              label: const Text('Chip'),
            ),
          ],
        ),
      ),
    );
  }
}
