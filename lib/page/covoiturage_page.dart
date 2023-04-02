import 'package:flutter/material.dart';
import 'package:untitled/widget/navigation_drawer_widget.dart';

class Covoiturage extends StatelessWidget {
  const Covoiturage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: const NavigationDrawerWidget(),
    appBar: AppBar(
      title: const Text('covoiturage'),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
  );
}