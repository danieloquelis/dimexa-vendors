import 'dart:async';

import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/data/models/reverse_geocoding_result/reverse_geocoding_result.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/base_appbar/base_appbar.dart';
import 'package:dimexa_vendors/modules/cient_page/clients_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
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
    return GetBuilder<ClientsController>(
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
                    SizedBox(width: 8,),
                    Visibility(
                      visible: _.isEditing,
                      child: FloatingActionButton.extended(
                        heroTag: 'cancel_button',
                        onPressed: (){

                        },
                        icon: Icon(Icons.close),
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
                infoCard()
              ],
            )
        )
      ),
    );
  }

  Widget infoCard() {
    return GetBuilder<ClientsController>(
      id: "mapview_address_card",
      builder: (_) => Container(
        margin: const EdgeInsets.all(18),
        padding: const EdgeInsets.symmetric(vertical: 12),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
              blurRadius: 11,
              color: AppColors.gray.withOpacity(0.5),
              offset: const Offset(0, 12)
            )
          ],
          color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 24,
              child: Row(
                children: [
                  Expanded(
                    child: textField(
                      textController: _.addressTextController,
                      onChanged: _.setSearchAddressText,
                      prefixIcon: Icons.location_on,
                      hintText: "Buscar dirección",
                      onFocusChanged: _.onSearchAddressFocusChanged
                    ),
                  ),
                  Visibility(
                    visible: _.isSearchingAddress,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: SpinKitRing(
                        color: AppColors.green,
                        size: 16,
                        lineWidth: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: _.showAddressAutoComplete,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 200,
                  minWidth: MediaQuery.of(context).size.width
                ),
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Obx(
                      () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ..._.autoCompleteAddresses.value.map((address) =>
                            InkWell(
                              onTap: () {
                                _.onSelectAddressFromAutoComplete(address);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                child: Text(address.description),
                              ),
                            )
                          )
                        ]
                      ),
                    )
                  ),
                ),
              ),
            ),
            Visibility(
              visible: !_.showAddressAutoComplete,
              child: Column(
                children: [
                  const Divider(color: AppColors.gray,),
                  SizedBox(
                    height: 24,
                    child: textField(
                      textController: _.referenceTextController,
                      onChanged: (value) {} ,
                      prefixIcon: Icons.flag,
                      hintText: "Escriba una referencia"
                    )
                  )],
              )
            )
          ],
        ),
      )
    );
  }

  Widget textField({
    required TextEditingController textController,
    required Function onChanged,
    required IconData prefixIcon,
    required String hintText,
    Function? onFocusChanged
  }) {
    return Focus(
      onFocusChange: (hasFocus) {
        if (onFocusChanged != null) {
          onFocusChanged(hasFocus);
        }
      },
      child: TextField(
        maxLines: 1,
        enabled: true,
        controller: textController,
        onChanged: (text) {
          onChanged(text);
        },
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 14,
          ),
          border: InputBorder.none,
          fillColor: Colors.transparent,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          prefixIcon: Icon(
            prefixIcon,
            color: AppColors.green,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
