import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/splash_screen/splash_screen_controller.dart';
import 'package:flutter_getx/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:loading/loading.dart';

class SplashScreen extends StatelessWidget {
  var _controller = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colorDefault,
        child: GetBuilder<SplashScreenController>(
          init: _controller,
          initState: (state){
            _controller.getCachedUser();
          },
          builder: (controller){
            if(controller.loading.value){
              return Center(
                child: Container(
                  child: Loading(
                    indicator: BallPulseIndicator(),
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              );
            }
            return Center(
              child: Text("Done"),
            );
          },
        ),
      ),
    );
  }
}