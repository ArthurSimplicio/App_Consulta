// ignore_for_file: file_names
import 'package:flutter/material.dart';

class SchedulingPage extends StatefulWidget {
  const SchedulingPage({super.key});

  @override
  State<SchedulingPage> createState() => _SchedulingPageState();
}

class _SchedulingPageState extends State<SchedulingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Text('Scheduling', style: TextStyle(fontSize: 60, color: Colors.white),)
      ),
    );
  }
}
