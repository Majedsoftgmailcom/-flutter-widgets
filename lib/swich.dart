import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  bool v = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // drawer: const Drawer(
      //   width: 200,
      //   // elevation: 30.0,
      //   backgroundColor: Colors.blue,
       
      // ),
      body: Column(
        children: [
          Switch(
            value: v,
            onChanged: (val) {
              setState(() {
                v = val;
              });
            },
          ),
          const ListTile(
            title: Text('khhn'),
            subtitle: Text('kjkkjd'),
            leading: Icon(Icons.info),
            trailing: Icon(Icons.card_giftcard_outlined),
          ),
          MaterialButton(
            color: Colors.amber,
            child: const Text('الرساله'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('عنوان الرساله'),
                    content: const Text('هل انت متاكد من الاغلاق'),
                    icon: const Icon(Icons.info_rounded),
                    //backgroundColor: Colors.amberAccent,
                    iconColor: Colors.black,
                    elevation: 10.0,
                    // titlePadding: EdgeInsets.all(10),
                    actions: [
                      ElevatedButton.icon(
                        label: const Text('الغاء الامر'),
                        onPressed: () {
                        },
                        icon: const Icon(Icons.cancel_outlined),
                      ),
                      ElevatedButton.icon(
                        label: const Text('خروج'),
                        onPressed: () {

                        },
                        icon: const Icon(Icons.exit_to_app),
                      ),
                    ],
                  );
                },
              );
            },
          ),//end massege
       
        ],
      ),
      
    );
  }
}
