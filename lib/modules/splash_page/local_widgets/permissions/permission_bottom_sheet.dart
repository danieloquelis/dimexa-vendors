import 'package:carousel_slider/carousel_slider.dart';
import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/modules/splash_page/local_widgets/permissions/permission_item.dart';
import 'package:dimexa_vendors/modules/splash_page/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PermissionBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (_) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AbsorbPointer(
                child: CarouselSlider.builder(
                  carouselController: _.carouselController,
                  itemCount: _.appPermissions.length,
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    aspectRatio: 2.0,
                    initialPage: 0,
                    height: 380,
                    onPageChanged: (idx, reason) {
                      _.onPermissionSlideChanged(idx);
                    }
                  ),
                  itemBuilder: (context, idx, __) {
                    return PermssionItem(
                      permission: _.appPermissions[idx],
                    );
                  },
                ),
              ),
              GetBuilder<SplashController>(
                id: "permission_slider_indicator",
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _.appPermissions.map((url) {
                    int index = _.appPermissions.indexOf(url);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _.permissionSlidePos == index
                            ? AppColors.blue
                            : const Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    );
                  }).toList()
                ),
              ),
              const SizedBox(height: 24,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: ElevatedButton(
                  onPressed: () {
                    _.onRequestPermission();
                  },
                  child: Text('Continuar')
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
