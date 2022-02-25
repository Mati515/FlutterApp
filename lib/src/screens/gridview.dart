import 'package:flutter/material.dart';

class MyGridview extends StatelessWidget {
  const MyGridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(6, (index) {
        return Center(
          child: Text(
            'product $index',
            style: Theme.of(context).textTheme.headline6,
          ),
        );
      }),
    );
  }
}
