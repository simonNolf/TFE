import 'package:flutter/material.dart';
import 'package:untitled/widget/navigation_drawer_widget.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: const NavigationDrawerWidget(),
    appBar: AppBar(
      title: const Text('Notifications'),
      centerTitle: true,
      backgroundColor: Colors.indigo,
    ),
  );
}