import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: SafeArea(
        child: Column(
          children: List.generate(20, (index) {
            return Text("Publicação ${index + 1} do Feed");
          }),
        ),
      ),
    );
  }
}
