import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 10),
              color: Colors.red,
            ),
            height: 100,
          ),
          ...List.generate(100, (index) => Text("$index")),
          ListView(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                height: 100,
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
    );
  }
}
