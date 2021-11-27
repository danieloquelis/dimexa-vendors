import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/modules/splash_page/local_widgets/message/message.dart';
import 'package:dimexa_vendors/modules/splash_page/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/state_manager.dart';


class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: AppColors.basePage,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/dimexa_login.png",
              ),
              Visibility(
                visible: _.message!.isNotEmpty,
                child: Message(
                  message: _.message!,
                  actionLabel: "Ir a ajustes",
                  onClick: _.onTakeAction,
                ),
              ),
              Visibility(
                visible: _.loading,
                child: const SpinKitChasingDots(
                  color: AppColors.green,
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
