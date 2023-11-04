// ignore_for_file: file_names
import 'package:flutter/material.dart';
class Listviewbuilder extends StatefulWidget {
  const Listviewbuilder({super.key});
  @override
  State<Listviewbuilder> createState() => _ListviewbuilderState();
}
   List names=[
  'الله','الرحمن','الرحيم','القدوس','السلام',
   'المؤمن ','المهيمن','العزيز','الجبار','المتكبر','الخالق',
  'البارئ','المصور','الرزاق','المحيي','المميت',
  ];
class _ListviewbuilderState extends State<Listviewbuilder> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(),
      // drawer: const Drawer1(),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int x) {
          return Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.black,
                height: 200,
                width: 150,
               child: Text('${names[x]}',
               style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                ),
                ),
              ),
             const SizedBox(height: 10,),
            ],
          );
        },
      ),
    );
  }
}