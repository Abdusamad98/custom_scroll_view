import 'package:flutter/material.dart';

class ExampleScreenOne extends StatefulWidget {
  const ExampleScreenOne({Key? key}) : super(key: key);

  @override
  State<ExampleScreenOne> createState() => _ExampleScreenOneState();
}

class _ExampleScreenOneState extends State<ExampleScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('App Bar'),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 3,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 100.0,
            delegate: SliverChildBuilderDelegate(
              childCount: 10,
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
