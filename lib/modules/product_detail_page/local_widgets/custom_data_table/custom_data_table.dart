import 'package:flutter/material.dart';

class CustomDataTable extends StatelessWidget {
  late List<DataColumn> columns;
  late List<DataRow> rows;
  late double columnSpacing;

  CustomDataTable({
    required List<DataColumn> this.columns,
    required List<DataRow> this.rows,
    double this.columnSpacing = 56.0
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
        columns: columns,
        rows: rows,
        columnSpacing: columnSpacing,
        horizontalMargin: 0,
        headingRowHeight: 24,
        dataRowHeight: 36
    );
  }
}
