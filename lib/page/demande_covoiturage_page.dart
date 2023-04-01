import 'package:flutter/material.dart';
import 'package:untitled/widget/navigation_drawer_widget.dart';

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('demande_covoiturage'),
      centerTitle: true,
      backgroundColor: Colors.green,
    ),
    body: Text("coucou", style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
    );
}