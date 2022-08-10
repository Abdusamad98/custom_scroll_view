import 'package:custom_scroll_view/screens/widgets/example_header_view.dart';
import 'package:custom_scroll_view/screens/widgets/pinned_header_view.dart';
import 'package:custom_scroll_view/screens/widgets/user_item.dart';
import 'package:flutter/material.dart';

class ExampleScreenFour extends StatefulWidget {
  const ExampleScreenFour({Key? key}) : super(key: key);

  @override
  State<ExampleScreenFour> createState() => _ExampleScreenFourState();
}

class _ExampleScreenFourState extends State<ExampleScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Example four"),
              // centerTitle: true,
              background: Image.network(
                "https://images.pexels.com/photos/35967/mini-cooper-auto-model-vehicle.jpg?cs=srgb&dl=pexels-pixabay-35967.jpg",
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.red,
            leading: const BackButton(),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
          SliverPadding(
              padding: EdgeInsets.all(20),
              sliver: SliverPersistentHeader(delegate: ExampleHeaderView(), pinned: false,)),
          SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.teal[100 * (index % 9)],
                    child: Text('Grid Item $index'),
                  );
                },
                childCount: 50,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: PinnedHeaderView(),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 50,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
          ),
          SliverPersistentHeader(pinned: true, delegate: PinnedHeaderView()),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 50,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
          )
        ],
      ),
    );
  }
}
