
// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Anmi extends StatefulWidget {
  const Anmi({super.key});

  @override
  State<Anmi> createState() => _AnmiState();
}

class _AnmiState extends State<Anmi> {
  var itemchose;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              // width: 200,
              // height: 400,
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: const Text('data'),
            ),
          ),
           Expanded(
             child: Container(
              // width: 200,
              // height: 400,
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: CupertinoButton(
                child: const Text('data'),
                onPressed: () {},
              ),
                     ),
           ),
           Expanded(
          
             child: Container(
              // width: 200,
              // height: 400,
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: CupertinoButton(
                child: const Text('data'),
                onPressed: () {},
              ),
                     ),
           ),
           ElevatedButton(onPressed: () {
             
           }, 
           child: const Row(
            mainAxisSize: MainAxisSize.min,
             children: [
               Text('data'),
               Icon(Icons.dangerous)
             ],
           )),
          ElevatedButton.icon(
            label: const Text('data'),
            icon: const Icon(Icons.set_meal),
            onPressed: () {
            
          }, ),
        GestureDetector(
          onTap: () {
            print('تم النقر');
          },
          child: Container(
            color: Colors.blue,
          child: const Text('button'),
          ),
        ),
          DropdownButton(
            items: [
              "us",
              "as",
              "yemen",
              "aoman",
              "frnc",
            ].map((e) => DropdownMenuItem(
              value: e,
              child: Text('$e'),
              ),
              ).toList(),
            onChanged: (val) {
              setState(() {
                itemchose = val;
              });
            },
            value: itemchose,
          )
        ],
      ),
    );
  }
}
