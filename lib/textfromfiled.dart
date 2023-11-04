// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Text_from_fileld extends StatefulWidget {
  const Text_from_fileld({super.key});

  @override
  State<Text_from_fileld> createState() => _Text_from_fileldState();
}

class _Text_from_fileldState extends State<Text_from_fileld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مربع النص'),
      ),
      body: Column(
        children: [
         TextFormField(

         ),
  
          // TextFormField(
          //   enabled: true,
          //   autofocus: true,
          //   decoration: const InputDecoration(
          //     // focusedBorder: OutlineInputBorder(
          //     //   borderSide: BorderSide(
          //     //color: Colors.black,width: 3,style: BorderStyle.solid,),
          //     //     borderRadius: BorderRadius.all(Radius.circular(10),
                  
          //         enabledBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.all(Radius.zero),
          //         ),
          //     // border: OutlineInputBorder(
          //     //   borderRadius: BorderRadius.all(Radius.circular(10),),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
