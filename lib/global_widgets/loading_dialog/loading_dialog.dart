import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class LoadingDialog {

  LoadingDialog.showDialog({
    required BuildContext context,
    String? message
  }) {
    baseDialog(
        context: context,
        child: SpinKitRing(color: Colors.grey.shade500, size: 80,),
        message: StringUtils.isNotNullNorEmpty(message) ? message! : 'Cargando, porfavor espere...'
    );
  }

  LoadingDialog.showProgress({
    required BuildContext context,
    String? prefixMessage,
    required RxDouble progress
  }) {
    baseDialog(
        context: context,
        child: SpinKitRing(color: Colors.grey.shade500, size: 80,),
        dynamicMessage: Obx(
          () => TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: progress.value),
            duration: const Duration(milliseconds: 3500),
            builder: (_, double value, __) =>
              Text('$prefixMessage\n(${value.toStringAsFixed(1)}/100%)', textAlign: TextAlign.center,)
          )
        ),
    );
  }

  LoadingDialog.showError({
    required BuildContext context,
    String? message
  }) {
    baseDialog(
        context: context,
        child: Container(
            width: 80,
            height: 80,
            child: Icon(
              Icons.clear,
              color: Colors.grey.shade500,
              size: 50,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              border: Border.all(
                width: 4.0,
                color: Colors.grey.shade500,
              ),
            )),
        message: StringUtils.isNullOrEmpty(message) ? 'Ha ocurrido un error, por favor intente otra vez.' : message!
    );
  }

  baseDialog({
    required BuildContext context,
    required Widget child,
    String? message,
    Widget? dynamicMessage
  }) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => Dialog(
          backgroundColor: Colors.transparent,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: Colors.white,
              height: 200,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  child,
                  const SizedBox(height: 24,),
                  dynamicMessage ?? Text(
                    StringUtils.checkNullOrEmpty(message),
                    style: TextStyle(color: Colors.grey.shade500),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}