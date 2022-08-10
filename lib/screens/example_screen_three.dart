import 'package:flutter/material.dart';

class ExampleScreenThree extends StatefulWidget {
  const ExampleScreenThree({Key? key}) : super(key: key);

  @override
  State<ExampleScreenThree> createState() => _ExampleScreenThreeState();
}

//https://api.flutter.dev/flutter/material/SliverAppBar-class.html

class _ExampleScreenThreeState extends State<ExampleScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: true,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text('SliverAppBar'),
              background: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(16),
                ),
                child: Image.network(
                  "https://images.pexels.com/photos/35967/mini-cooper-auto-model-vehicle.jpg?cs=srgb&dl=pexels-pixabay-35967.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(16))),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: Center(
                child: Text('Scroll to see the SliverAppBar in effect.'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
