import 'dart:async';

import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ClientMap extends StatefulWidget {
  @override
  _ClientMapState createState() => _ClientMapState();
}

class _ClientMapState extends State<ClientMap> {
  final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text('Mapa'),
          elevation: 0,
          actions: [
            Switch(
              value: false,
              onChanged: (value){},
              activeColor: AppColors.green,
            )
          ],
        ),
        body: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
          child: Stack(
            children: [
              GoogleMap(
                //mapType: MapType.hybrid,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
              Center(
                child: Icon(
                  Icons.location_on,
                  size: 48,
                  color: AppColors.blue,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 11,
                      color: AppColors.gray.withOpacity(0.5),
                      offset: Offset(0, 12)
                    )
                  ],
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 12, bottom: 6),
                      child: Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.green,),
                          SizedBox(width: 8,),
                          Text('Direccion principal')
                        ],
                      ),
                    ),
                    Divider(color: AppColors.gray,),
                    Padding(
                      padding: const EdgeInsets.only(top: 6, left: 12, bottom: 16),
                      child: Row(
                        children: [
                          Icon(Icons.flag, color: Colors.green,),
                          SizedBox(width: 8,),
                          Text('Referencia')
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        )
    );
  }
}
