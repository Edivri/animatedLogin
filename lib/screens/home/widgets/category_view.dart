import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = ['Skills👨🏽‍💻', 'Job💼', 'Project📦','Doings💰', ];

  int _category = 0;

  void selectFoward() {
    setState(() {
      _category++;
    });
  }

  void selectBackward() {
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: _category > 0 ? selectBackward : null,
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.teal,
        ),
        Text(
          categories[_category].toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 30, color: Colors.white),
        ),
        IconButton(
          onPressed: _category < categories.length -1 ? selectFoward : null,
          icon: const Icon(Icons.arrow_forward_ios),
          color: Colors.teal,
        ),
      ],
    );
  }
}
