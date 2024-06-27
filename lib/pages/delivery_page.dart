import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';

// Package Google Maps (Menampilkan maps)
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Delivery Page'),
      ),
    );
  }
}
