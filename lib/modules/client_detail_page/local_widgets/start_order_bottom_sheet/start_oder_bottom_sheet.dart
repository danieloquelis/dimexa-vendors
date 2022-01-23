import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/core/utils/collection_utils/collection_utils.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/data/models/address/address.dart';
import 'package:dimexa_vendors/data/models/document_type/document_type.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/base_dropdown/base_dropdown.dart';
import 'package:dimexa_vendors/global_widgets/card_title/card_title.dart';
import 'package:dimexa_vendors/global_widgets/custom_card/custom_card.dart';
import 'package:dimexa_vendors/global_widgets/custom_info_field/custom_info_field.dart';
import 'package:dimexa_vendors/modules/client_detail_page/local_widgets/address_item/address_item.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class StartOderBottomSheet extends StatelessWidget {
  ScrollController? scrollController;
  Function onStartOrder;
  List<Address>? addresses;
  List<DocumentType>? documentTypes;

  StartOderBottomSheet({
    this.scrollController,
    required this.onStartOrder,
    required this.addresses,
    required this.documentTypes
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.78
      ),
      child: Container(
          //margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,

            children: [
              const SizedBox(height: 2,),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                child: Container(
                  color: Colors.grey,
                  width: 80,
                  height: 6,
                ),
              ),
              const SizedBox(height: 8,),
              CardTitle(
                title: "Condiciones de venta y plazos",
                fontColor: AppColors.blue,
              ),
              CustomCard(
                padding: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: CustomInfoField(
                            label: AppTranslations.of(context)!.text("document"),
                            widgetValue: DropdownSearch<DocumentType>(
                              mode: Mode.MENU,
                              selectedItem: documentTypes!.first,
                              items: documentTypes,
                              itemAsString: (DocumentType? document) {
                                return StringUtils.checkNullOrEmpty(document!.nombre);
                              },
                              onChanged: print,
                              maxHeight: 120,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8,),
                        Flexible(
                          child: CustomInfoField(
                            label: AppTranslations.of(context)!.text("order_authorization"),
                            widgetValue: BaseDropdown(
                              label: "O123456789",
                              fontSize: 14,
                              backgroundColor: AppColors.tagBackground,
                              borderColor: Colors.transparent,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 24,),
                    Row(
                      children: [
                        Flexible(
                          child: CustomInfoField(
                            label: AppTranslations.of(context)!.text("condition"),
                            widgetValue: BaseDropdown(
                              label: "F6 - Letra",
                              fontSize: 14,
                              backgroundColor: AppColors.tagBackground,
                              borderColor: Colors.transparent,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8,),
                        Flexible(
                          child: CustomInfoField(
                            label: AppTranslations.of(context)!.text("term"),
                            widgetValue: BaseDropdown(
                              label: "90 días",
                              fontSize: 14,
                              backgroundColor: AppColors.tagBackground,
                              borderColor: Colors.transparent,
                            ),
                          ),
                        )

                      ],
                    ),
                  ],
                )
              ),
              const SizedBox(height: 24,),
              CardTitle(
                title: "Dirección de entrega",
                fontColor: AppColors.blue,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 180
                ),
                child: CustomCard(
                  padding: 16,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    controller: scrollController,
                    child: CollectionUtils.isNotNullNorEmpty(addresses) ? Column(
                      children: addresses!.map((address) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 18,
                              height: 24,
                              child: Radio<String>(
                                value: "value",
                                groupValue: "value",
                                onChanged: (val) {},
                                toggleable: true,
                              ),
                            ),
                            const SizedBox(width: 12,),
                            Flexible(
                              child: AddressItem(
                                showButton: false,
                                horizontalMargin: 0,
                                leftPadding: 0,
                                rightPadding: 0,
                                topPadding: 0,
                                bottomPadding: 0,
                                backgroundColor: Colors.transparent,
                                address: address,
                              ),
                            ),
                          ],
                        );
                      }).toList()
                    ) : const Center(
                      child: Text('No se encontraron direcciones registradas'),
                    ),
                  )
                ),
              ),
              const SizedBox(height: 24,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () => onStartOrder(),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("Iniciar pedido"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
            ],
          )
      ),
    );
  }
}
