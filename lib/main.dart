import 'package:flutter/material.dart';
import 'package:mothakrah/%D9%86%D8%B5%D9%81%D9%8A/anmi.dart';
import 'package:mothakrah/appbarr.dart';
import 'package:mothakrah/database.dart';
import 'package:mothakrah/drawer.dart';
import 'package:mothakrah/grid_view.dart';
import 'package:mothakrah/listvieweBuilder.dart';
import 'package:mothakrah/note_app/add_note.dart';
import 'package:mothakrah/note_app/note.dart';
import 'package:mothakrah/page_view.dart';
import 'package:mothakrah/pageviewbu.dart';
import 'package:mothakrah/tabbarview.dart';
import 'package:mothakrah/text.dart';
import 'package:mothakrah/textfromfiled.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(title: const Text("تطبيق المذاكره"),),
          drawer:
           const Drawer1(
          ),
          body: const Text2(),
        ),
      ),
      routes: {
//"list":(context) => const Listview(),
"listb":(context) => const Listviewbuilder(),
"graid":(context) => const Graid_view(),
"appbar":(context) => const Appbarr(),
"pagevb":(context) => const page_view_buil(),
"pagev":(context) => const Page_view(),
"textf":(context) => const Text_from_fileld(),
"tabbarview":(context) => const Tap_bar_view(),
"db":(context) => const DataBaseSqflite(),
"note1":(context) => const AddNote(),
"note":(context) => const Note(),
"anmi":(context) => const Anmi(),
      } ,
    );
  }
}
