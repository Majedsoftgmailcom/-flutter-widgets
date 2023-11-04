import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({super.key, required List<Widget> children});
  @override
  State<Listview> createState() => _ListviewState();
}
class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('listview'),
      // ),
      // drawer: const Drawer(
      //   child: Drawer1()
      // ),
      body: ListView(
        scrollDirection: Axis.vertical,

        children: [
          Container(
            color: Colors.amber,
             width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.black,
              width: 700,
            height: 200,
            //  width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.amber,
               width: 300,
            height: 200,
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.red,
              width: 300,
            height: 200,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
