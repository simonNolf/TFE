import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/widget/navigation_drawer_widget.dart';

class CovoituragePage extends StatefulWidget {
  const CovoituragePage({super.key});

  @override
  _CovoituragePageState createState() => _CovoituragePageState();
}

class _CovoituragePageState extends State<CovoituragePage> {
  late GoogleMapController googleMapController;
  static const CameraPosition initialCameraPosition = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962), zoom: 14);

  Set<Marker> markers = {};



  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Text('Demande de Covoiturage'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: GoogleMap(
          initialCameraPosition: initialCameraPosition,
          markers: markers,
          zoomControlsEnabled: false,
          mapType: MapType.normal,
          onMapCreated: (GoogleMapController controller) {
            googleMapController = controller;
          },
          myLocationEnabled: true,
        ),
      );
}
