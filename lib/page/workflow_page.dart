import 'package:flutter/material.dart';
import 'package:untitled/widget/navigation_drawer_widget.dart';

class WorkflowPage extends StatelessWidget {
  const WorkflowPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: const NavigationDrawerWidget(),
    appBar: AppBar(
      title: const Text('Workflow'),
      centerTitle: true,
      backgroundColor: Colors.blue,
    ),
  );
}