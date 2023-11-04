import 'package:flutter/material.dart';

// ignore: camel_case_types
class Graid_view extends StatefulWidget {
  const Graid_view({super.key});

  @override
  State<Graid_view> createState() => _Graid_viewState();
}

// ignore: camel_case_types
class _Graid_viewState extends State<Graid_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      // ),
      //drawer: const Drawer(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
            return Container(
            color: Colors.amber,
            height: 100,
            width: 150,
            child: const Text('data')) ;
        },
      ),    
    );
  }
}