

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:mothakrah/sqldb.dart';

class DataBaseSqflite extends StatefulWidget {
  const DataBaseSqflite({super.key});

  @override
  State<DataBaseSqflite> createState() => _DataBaseSqfliteState();
}
Sqldb sqldb=Sqldb();
class _DataBaseSqfliteState extends State<DataBaseSqflite> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(onPressed: () async{ 
       var r=await  sqldb.insertdata('''
 insert into note(name) values("t2") ''');
 log(r.toString());
          }, 
          child: const Text('insert'),

          ),
          
          ElevatedButton(onPressed: ()async { 
var r=await sqldb.selectdata('select * from note');
log(r.toString());
          }, 
          child:  const Text('se')),
        ],
      ),
    );
  }
}