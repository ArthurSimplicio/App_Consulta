// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        
        backgroundColor: Colors.greenAccent,
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 300,
                height: 180,
                decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(14)
                  
                ),
                child: const Column(
                  children:[
                    SizedBox(height: 30,
                   
                    ),
                    Row(
                      children: [
                        SizedBox(width: 40,
                         child: Icon(Icons.person),),
                        Text('Olá, Arthur!', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],
                ),
              ), 
              ]
    
    
                ),
              ),
          ),
    );
  }
}
