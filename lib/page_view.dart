import 'package:flutter/material.dart';

// ignore: camel_case_types
class Page_view extends StatefulWidget {
  const Page_view({super.key});
  @override
  State<Page_view> createState() => _Page_viewState();
}
// ignore: camel_case_types
class _Page_viewState extends State<Page_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          PageView(
            children: [
              Container(
                color: Colors.amber,
                height: 400,
                width: 350,
              ),
              const SizedBox(height: 20,),
              Container(
                color: Colors.red,
                // height: 400,
                // width: 350,
              ),
              Container(
                color: Colors.black,
                height: 400,
                width: 350,
              ),
              const Text('data'),
              const Text('data'),
            ],
          ),
           const Positioned(
            bottom: 40,
            right: 100,
            child: Text('data1',style: TextStyle(fontSize: 33 ,color: Colors.blue),),
            ),
        ],
      ),
    );
  }
}
