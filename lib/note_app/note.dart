import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:mothakrah/sqldb.dart';
class Note extends StatefulWidget {
  const Note({super.key});
  @override
  State<Note> createState() => _NoteState();
}
class _NoteState extends State<Note> {
  Sqldb sqldb = Sqldb();
  Future sele() async {
    List result = await sqldb.selectdata('select * from note');
    log(result.toString());
    return result;
  }
  @override
  void initState() {
    sele();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('جميع الملاحظات'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('note1');
        },
        child: const Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: sele(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
              itemBuilder: (BuildContext context, int i) {
                return Card(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.grey,
                  child: ListTile(
                    title: Text('$i  ${snapshot.data[i]['name']}'),
                    subtitle:Text('$i  ${snapshot.data[i]['dit']}'),
                    leading: Text('$i  ${snapshot.data[i]['dat']}'),
                    trailing: const Icon(Icons.delete_forever_outlined),
                  ),
                );
              },
            );
          } 
          else {
            // return const CircularProgressIndicator();
            return const Text('لاتوجد ملاحظات ');
          }
        },
      ),
    );
  }
}
