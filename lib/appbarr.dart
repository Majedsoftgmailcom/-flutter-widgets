import 'package:flutter/material.dart';

class Appbarr extends StatefulWidget {
  const Appbarr({super.key});

  @override
  State<Appbarr> createState() => _AppbarrState();
}

class _AppbarrState extends State<Appbarr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APPBAR'),
        centerTitle: true,
        leading: const Icon(Icons.draw_sharp),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.exit_to_app),
          ),
           IconButton(
            onPressed: () {},
            icon: const Icon(Icons.upload),
          ),
        ],
      ),
    );
  }
}
