import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/data/models/dashboard/dashboard.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomBarChart extends StatelessWidget {
  Dashboard dashboard;

  CustomBarChart({required this.dashboard});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        alignment: BarChartAlignment.spaceBetween,
        maxY: dashboard.getMax(),
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
    enabled: true,
    touchTooltipData: BarTouchTooltipData(
      tooltipBgColor: Colors.transparent,
      tooltipPadding: const EdgeInsets.all(0),
      direction: TooltipDirection.top,
      tooltipMargin: 8,
      getTooltipItem: (
          BarChartGroupData group,
          int groupIndex,
          BarChartRodData rod,
          int rodIndex,
          ) {
        return BarTooltipItem(
          'S/.${(rod.y/1000).round()}K',
          const TextStyle(
            color: AppColors.gray,
            fontWeight: FontWeight.bold,
            fontSize: 12
          ),
        );
      },
    ),
  );

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: SideTitles(
      showTitles: true,
      getTextStyles: (context, value) => const TextStyle(
        color: AppColors.gray,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      margin: 24,
      getTitles: (double value) {
        switch (value.toInt()) {
          case 0:
            return StringUtils.checkNullOrEmpty(dashboard.ventaMesAnt01Tit);
          case 1:
            return StringUtils.checkNullOrEmpty(dashboard.ventaMesAnt02Tit);
          case 2:
            return StringUtils.checkNullOrEmpty(dashboard.ventaMesAnt03Tit);
          case 3:
            return StringUtils.checkNullOrEmpty(dashboard.ventaMesAnt04Tit);
          case 4:
            return StringUtils.checkNullOrEmpty(dashboard.ventaMesAnt05Tit);
          case 5:
            return StringUtils.checkNullOrEmpty(dashboard.ventaMesAnt06Tit);
          default:
            return '';
        }
      },
    ),
    leftTitles: SideTitles(showTitles: false),
    topTitles: SideTitles(showTitles: false),
    rightTitles: SideTitles(showTitles: false),
  );

  FlBorderData get borderData => FlBorderData(
    show: false,
  );

  List<BarChartGroupData> get barGroups => [
    BarChartGroupData(
      x: 0,
      barRods: [
        BarChartRodData(
            y: double.parse(dashboard.ventaMesAnt01!),
            colors: [Colors.lightBlueAccent, Colors.greenAccent],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            width: 42
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 1,
      barRods: [
        BarChartRodData(
            y: double.parse(dashboard.ventaMesAnt02!),
            colors: [Colors.lightBlueAccent, Colors.greenAccent],
            width: 42,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(
            y: double.parse(dashboard.ventaMesAnt03!),
            colors: [Colors.lightBlueAccent, Colors.greenAccent],
            width: 42,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 3,
      barRods: [
        BarChartRodData(
            y: double.parse(dashboard.ventaMesAnt04!),
            colors: [Colors.lightBlueAccent, Colors.greenAccent],
            width: 42,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(
            y: double.parse(dashboard.ventaMesAnt05!),
            colors: [Colors.lightBlueAccent, Colors.greenAccent],
            width: 42,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 5,
      barRods: [
        BarChartRodData(
            y: double.parse(dashboard.ventaMesAnt06!),
            colors: [Colors.lightBlueAccent, Colors.greenAccent],
            width: 42,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        )
      ],
      showingTooltipIndicators: [0],
    )
  ];
}