import 'package:flutter/material.dart';
import 'package:mothakrah/swich.dart';
class Drawer1 extends Drawer {
  const Drawer1({super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        alignment: Alignment.centerRight,
        color: Colors.blue,
        width: 300,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('القائمة الرئيسية'),
          ),
          body: Container(
            color: Colors.grey[300],
            //width: 200,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ListView(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 40,
                    child: Column(
                      children: [
                        Text('خلدون'), 
                      ],
                    ),
                  ),
                  
                  const Text('magedsoftt.gmail.com'),
                  const Divider(color: Colors.black,height: 3,),
                  ListTile(
                    title: const Text('السويتش و الرساله'),
                    leading: const Icon(Icons.home),
                    onTap: () {
       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home2(),));
                    },
                  ),
                  ListTile(
                    title: const Text('Listview'),
                    leading: const Icon(Icons.home),
                    onTap: () {
                      Navigator.of(context).pushNamed('list');
                    },
                  ),
                  ListTile(
                    title: const Text('Listview.Builder'),
                    leading: const Icon(Icons.home),
                    onTap: () {
                      Navigator.of(context).pushNamed('listb');
                    },
                  ),
                   ListTile(
                    title: const Text('graid view.Builder'),
                    leading: const Icon(Icons.grid_3x3),
                    onTap: () {
                      Navigator.of(context).pushNamed('graid');
                    },
                  ),
                   ListTile(
                    title: const Text('appbar'),
                    leading: const Icon(Icons.grid_3x3),
                    onTap: () {
                      Navigator.of(context).pushNamed('appbar');
                    },
                  ),
                  ListTile(
                    title: const Text('page view Builder'),
                    leading: const Icon(Icons.grid_3x3),
                    onTap: () {
                      Navigator.of(context).pushNamed('pagevb');
                    },
                  ),
                  ListTile(
                    title: const Text('textf'),
                    leading: const Icon(Icons.grid_3x3),
                    onTap: () {
                      Navigator.of(context).pushNamed('textf');
                    },
                  ),
                   ListTile(
                    title: const Text('tab bar view'),
                    leading: const Icon(Icons.grid_3x3),
                    onTap: () {
                      Navigator.of(context).pushNamed('tabbarview');
                    },
                  ),
                   ListTile(
                    title: const Text('databasesqlflit'),
                    leading: const Icon(Icons.grid_3x3),
                    onTap: () {
                      Navigator.of(context).pushNamed('db');
                    },
                  ),
                   ListTile(
                    title: const Text('تطبيق الملاحظات'),
                    leading: const Icon(Icons.grid_3x3),
                    onTap: () {
                      Navigator.of(context).pushNamed('note');
                    },
                  ),
                   ListTile(
                    title: const Text('تصاميم '),
                    leading: const Icon(Icons.grid_3x3),
                    onTap: () {
                      Navigator.of(context).pushNamed('anmi');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
