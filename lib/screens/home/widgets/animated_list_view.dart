import 'package:animation/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      
      children: [
        ListData(
          
          subtitle: 'With Jane, Cape Town',
          title: 'Mastering Flutter',
          margin: listSlidePosition.value * 1,
          image: const AssetImage('images/modell.jpg'),
        ),
        ListData(
          subtitle: 'Camps Bay',
          title: 'Working with Dart',
          margin: listSlidePosition.value * 0,
          image: const AssetImage('images/modell.jpg'),
        ),
        ListData(
          subtitle: 'Dubai',
          title: 'Working with Animation',
          margin: listSlidePosition.value * 0,
          image: const AssetImage('images/modell.jpg'),
        ),
      ],
    );
  }
}
