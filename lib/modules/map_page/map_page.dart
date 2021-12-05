import 'dart:async';
import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/base_appbar/base_appbar.dart';
import 'package:dimexa_vendors/modules/map_page/local_widgets/info_card/map_info_card.dart';
import 'package:dimexa_vendors/modules/map_page/map_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
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
    return GetBuilder<MapController>(
      builder: (_) => Scaffold(
          appBar: BaseAppBar(
              title: AppTranslations.of(context)!.text("map"),
              back: () => _.onBack()
          ).widget(),
          floatingActionButton: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton.small(
                heroTag: 'center_map_button',
                onPressed: (){},
                child: const Icon(Icons.my_location),
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton.extended(
                      heroTag: 'edit_save_button',
                      onPressed: (){
                        _.onEditAddress();
                      },
                      icon: Icon(_.isEditing ? Icons.save: Icons.edit),
                      label: Text(_.floatingButtonLabel.value),
                    ),
                    const SizedBox(width: 8,),
                    Visibility(
                      visible: _.isEditing,
                      child: FloatingActionButton.extended(
                        heroTag: 'cancel_button',
                        onPressed: (){

                        },
                        icon: const Icon(Icons.close),
                        label: Text('Cancelar'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          body: ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
            child: Stack(
              children: [
                GoogleMap(
                  onTap: (position) => _.dismissKeyboard(),
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: _.onMapCreated,
                  zoomControlsEnabled: false,
                  zoomGesturesEnabled: true,
                  onCameraMove: _.onCameraMove,
                  onCameraIdle: _.onCameraIdle,
                  onCameraMoveStarted: _.onCameraMoveStarted,
                ),
                const Center(
                  child: Icon(
                    Icons.location_on,
                    size: 48,
                    color: AppColors.blue,
                  ),
                ),
                MapInfoCard()
              ],
            )
          )
      ),
    );
  }
}
