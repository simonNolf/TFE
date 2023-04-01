import 'package:flutter/material.dart';
import 'package:untitled/widget/navigation_drawer_widget.dart';

class Covoiturage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('covoiturage'),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
  );
}