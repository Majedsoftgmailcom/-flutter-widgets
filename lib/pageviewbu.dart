import 'package:flutter/material.dart';
import 'package:mothakrah/listvieweBuilder.dart';

// ignore: camel_case_types
class page_view_buil extends StatefulWidget {
  const page_view_buil({super.key});

  @override
  State<page_view_buil> createState() => _page_view_builState();
}

// ignore: camel_case_types
class _page_view_builState extends State<page_view_buil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: names.length,
        itemBuilder: (context, x) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text('${names[x]}',),
            ),
          ) ;
        },
      ),
    );
  }
}
