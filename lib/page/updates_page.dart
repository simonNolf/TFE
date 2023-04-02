import 'package:flutter/material.dart';
import 'package:untitled/widget/navigation_drawer_widget.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: const NavigationDrawerWidget(),
    appBar: AppBar(
      title: const Text('Updates'),
      centerTitle: true,
      backgroundColor: Colors.pink,
    ),
  );
}