import 'package:flutter/material.dart';
import 'package:untitled/data/user.dart';
import 'package:untitled/widget/navigation_drawer_widget.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: const NavigationDrawerWidget(),
    appBar: AppBar(
      backgroundColor: Colors.pink,
      title: const Text(name),
      centerTitle: true,
    ),
    body: Image.network(
      urlImage,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    ),
  );
}