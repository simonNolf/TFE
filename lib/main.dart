import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled/model/navigation_item.dart';
import 'package:untitled/page/covoiturage_page.dart';
import 'package:untitled/page/demande_covoiturage_page.dart';
import 'package:untitled/page/favourites_page.dart';
import 'package:untitled/page/notifications_page.dart';
import 'package:untitled/page/profile_page.dart';
import 'package:untitled/page/updates_page.dart';
import 'package:untitled/page/workflow_page.dart';
import 'package:untitled/provider/navigation_provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Navigation Drawer';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => NavigationProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => buildPages();

  Widget buildPages() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.profile:
        return const HeaderPage();
      case NavigationItem.demandeCovoiturage:
        return const CovoituragePage();
      case NavigationItem.favourites:
        return const FavouritesPage();
      case NavigationItem.workflow:
        return const WorkflowPage();
      case NavigationItem.updates:
        return const UpdatesPage();
      case NavigationItem.covoiturage:
        return const Covoiturage();
      case NavigationItem.notifications:
        return const NotificationsPage();
    }
  }
}