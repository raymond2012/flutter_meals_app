import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Recipes"),
      ),
      body: Container(
        child: Text("The Recipes For The Category!"),
      ),
    );
  }
}
