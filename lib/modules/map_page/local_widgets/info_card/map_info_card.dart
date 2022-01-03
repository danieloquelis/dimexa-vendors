import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/modules/map_page/local_widgets/map_text_field/map_text_field.dart';
import 'package:dimexa_vendors/modules/map_page/map_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class MapInfoCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MapController>(
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
                height: 38,
                child: Row(
                  children: [
                    Expanded(
                      child: AbsorbPointer(
                        absorbing: true,
                        child: MapTextField(
                          textController: _.addressTextController,
                          onChanged: _.setSearchAddressText,
                          prefixIcon: Icons.location_on,
                          hintText: "Dirreción no disponible",
                          onFocusChanged: _.onSearchAddressFocusChanged,
                        ),
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
                      height: 38,
                      child: MapTextField(
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
}
