import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SupplierMapPage extends StatefulWidget {
  const SupplierMapPage({super.key});

  @override
  State<SupplierMapPage> createState() => _SupplierMapPageState();
}

class _SupplierMapPageState extends State<SupplierMapPage> {
  GoogleMapController? _controller; // ignore: unused_field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Harita')),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(41.015137, 28.979530),
          zoom: 10,
        ),
        onMapCreated: (c) => _controller = c,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
    );
  }
}
