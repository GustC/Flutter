import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/home/home_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends StatelessWidget {
  final _controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lembretes",     
        ),
        centerTitle: false,
      ),
      body: GetBuilder(
        init: _controller,
        initState: (state){
          _controller.func();
        },
        builder: (HomeController controller){
          if(controller.loading.value){
            return Center(
              child: CircularProgressIndicator(),
            );
          } 
          return Center(
            child: Text("Home page"),
          );
        },
      ),
    );
  }
}