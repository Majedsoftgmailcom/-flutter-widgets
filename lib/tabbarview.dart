// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Tap_bar_view extends StatefulWidget {
  const Tap_bar_view({super.key});

  @override
  State<Tap_bar_view> createState() => _Tap_bar_viewState();
}

class _Tap_bar_viewState extends State<Tap_bar_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom:const TabBar(
       
       
          tabs: [
Tab(child: Text('data'),),
Tab(child: Text('data'),),
Tab(child: Text('data'),),
        ],
        ),
      ),
      body: TabBarView(
      
        children:  [
Container(
color: Colors.amber,
height: 400,
width: 350,
),
Container(
color: Colors.amber,
height: 400,
width: 350,
),
Container(
color: Colors.amber,
height: 400,
width: 350,
),
        ],
        ),
    );
  }
}