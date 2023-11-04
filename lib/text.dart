// ignore_for_file: unnecessary_string_interpolations, avoid_print, duplicate_ignore, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class Text2 extends StatefulWidget {
  const Text2({super.key});
  @override
  State<Text2> createState() => _Text2State();
}
class _Text2State extends State<Text2> {
  get g23 => null;
  List k = ["kh", "sana", "k", "j"];
  String value1 = "kh";
  var g2 = "g2";
  void h() {
    // ignore: avoid_print
    print(g2.isEmpty);
  }
  bool r = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('اول تطبيق'),
        // ),
        // drawer: const Drawer(
        //   child:Drawer1() ,
        // ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'الكلمه هذه',
                  
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                      fontSize: 20,
                    
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.amber,
                  height: 300,
                  width: 300,
                  child: const Text('kh'),
                ),
                const Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.amber,
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.black,
                  height: 3,
                ),
                const Icon(
                  Icons.architecture,
                  size: 30,
                  color: Colors.amber,
                ),
                //////////////////////////////////
                ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('ok'),
                ),
                ElevatedButton.icon(
                    onPressed: h,
                    icon: const Icon(Icons.print),
                    label: const Text('ok')),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.amber,
                  splashColor: const Color.fromARGB(255, 200, 220, 255),
                  child: const Text('ok'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('ok'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.print),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
                SizedBox(
                  width: 400,
                  child: DropdownButton(
                      hint: Text('${value1}'),
                      items: ["kh", "k", 'kj']
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text("$e"),
                            ),
                          )
                          .toList(),
                      onChanged: (val1) {
                        setState(() {
                          value1 = val1!;
                          print(value1);
                        });
                        //value1=;
                      }),
                ),
                
                Checkbox(
                  value: r,
                  onChanged: (val) {
                    setState(() {
                      r = val!;
                      print(r);
                    });
                  },
                ),
                CheckboxListTile(
                  subtitle: const Text('data'),
                  //secondary: const Icon(Icons.abc),
                  title: const Text('data111'),
                  value: r,
                  onChanged: (val) {
                    setState(() {
                      r = val!;
                    });
                  },
                ),
                RadioListTile(
                    title: const Text('عمان'),
                    subtitle: const Text('عمان'),
                    value: "عمان",
                    groupValue: g2,
                    onChanged: (val) {
                      setState(() {
                        g2 = val!;
                        h();
                      });
                    }),
                    
                RadioListTile(
                  title: const Text('اليمن'),
                  subtitle: const Text('اليمن'),
                  value: "اليمن",
                  groupValue: g2,
                  onChanged: (val) {
                    setState(() {
                      g2 = val!;
                      h();
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
