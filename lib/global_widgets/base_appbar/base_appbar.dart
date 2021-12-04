import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/core/values/numbers.dart';
import 'package:flutter/material.dart';

class BaseAppBar {
  String? title;
  String? lastUpdate;
  Function? syncOnDemand;
  Function? openDrawer;
  Function? back;


  BaseAppBar({
    this.title,
    this.lastUpdate,
    this.syncOnDemand,
    this.openDrawer,
    this.back
  });

  PreferredSizeWidget widget() {
    return AppBar(
      centerTitle: false,
      toolbarHeight: Numbers.appBarHeight,
      leading: IconButton(
        onPressed: () {
          if (openDrawer != null) {
            openDrawer!();
          }

          if (back != null) {
            back!();
          }
        },
        icon: back != null ? const Icon(Icons.arrow_back_ios) : const Icon(Icons.menu),
      ),
      actions: [
        Visibility(
          visible: syncOnDemand != null,
          child: IconButton(
            onPressed: () {
              if (syncOnDemand != null) {
                syncOnDemand!();
              }
            },
            icon: const Icon(Icons.sync, size: 28,),
          ),
        )
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(StringUtils.checkNullOrEmpty(title)),
          Visibility(
            visible: lastUpdate != null && lastUpdate!.isNotEmpty,
            child: Text(
              'Última sincronización $lastUpdate',
              style: const TextStyle(
                  fontSize: 12
              ),
            ),
          )
        ],
      ),
      elevation: 0,
    );
  }
}
