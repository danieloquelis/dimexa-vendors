import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/core/utils/date_time_util/date_time_util.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/base_appbar/base_appbar.dart';
import 'package:dimexa_vendors/global_widgets/base_dropdown/base_dropdown.dart';
import 'package:dimexa_vendors/global_widgets/cupertino_bsheet_item/cupertino_bsheet_item.dart';
import 'package:dimexa_vendors/modules/home_page/home_controller.dart';
import 'package:dimexa_vendors/modules/home_page/local_widgets/custom_bar_chart/custom_bar_chart.dart';
import 'package:dimexa_vendors/modules/home_page/local_widgets/indicator/indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) => Scaffold(
        appBar: BaseAppBar(
          title: AppTranslations.of(context)!.text('welcome'),
          lastUpdate: DateTimeUtil.dateTimeToText(_.lastSyncDate),
          syncOnDemand: () {}
        ).widget(),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: AppColors.basePage,
              borderRadius: BorderRadius.vertical(top: Radius.circular(18))
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringUtils.checkNullOrEmpty(_.currentSession.descripcion),
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 6,),
                Obx(
                    () => _.currentZones.length > 1 ?
                    BaseDropdown(
                      fontSize: 14,
                      borderColor: Colors.transparent,
                      backgroundColor: Colors.grey.shade200,
                      label: StringUtils.checkNullOrEmpty(_.selectedZoneId.value),
                      onClick: () {
                        showZones(_);
                      },
                    ): Text(StringUtils.checkNullOrEmpty(_.selectedZoneId.value)),
                ),

                SizedBox(height: 36,),
                Text(
                  'Avance',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularPercentIndicator(
                      radius: 146.0,
                      lineWidth: 18.0,
                      animation: true,
                      percent: 0.7,
                      center: Text(
                        "80.0%",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: AppColors.green,
                      backgroundColor: Colors.grey.shade200,
                    ),
                    Column(
                      children: [
                        Indicator(
                          title: 'Cuota',
                          value: '80,000',
                        ),
                        SizedBox(height: 16,),
                        Indicator(
                          title: 'Venta',
                          value: '64,000',
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Indicator(
                          title: 'Morosidad',
                          value: '5.0%',
                        ),
                        SizedBox(height: 16,),
                        Indicator(
                          title: 'Cobertura',
                          value: '80/100',
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 36,),
                AspectRatio(
                  aspectRatio: 1.7,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    child: const CustomBarChart(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic>? showZones(HomeController _) {
    return showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
          title: Text(
            "Seleccione una zona",
            style: const TextStyle(
                fontSize: 18,
                color: AppColors.gray
            ),
          ),
          actions: _.currentZones.map((zone) {
            return CupertinoBSheetItem(
              label: '${zone.zonaid}',
              onClick: () {
                _.onChangeZone(zone.zonaid!);
              },
              isSelected: false,
            );
          }).toList(),
        )
    );
  }
}
