import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/singin/singin_controller.dart';
import 'package:flutter_getx/utils/constants/colors.dart';
import 'package:get/get.dart';

class SingInPage extends StatelessWidget {
  SingInController _controller = Get.put(SingInController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorDefault,
      body: GetBuilder(
        init: _controller,
        builder: (controller){
          return Form(
            key: _formKey,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "Seja bem vindo(a)!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10,),
                        child: Text(
                          "Parece que é sua primeira vez aqui... coloque um nome para se representar",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: TextEditingController(text: _controller.name),
                        onChanged: _controller.changeName,
                        onFieldSubmitted: (name){
                          if(_formKey.currentState.validate()){
                            _controller.submit();
                          }
                        },
                        validator: (name){
                          if(name.isEmpty){
                            return "Coloque um nome";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Digite seu nome",
                          filled: true,
                          fillColor: Colors.white,
                          hoverColor: Colors.white,
                          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 2)),
                          errorStyle: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          suffixIcon: GestureDetector(
                            onTap: (){
                              if(_formKey.currentState.validate()){
                                _controller.submit();
                              }
                            },
                            child: Icon(Icons.chevron_right),
                          )
                        ),
                      ),
                      FlatButton(
                        onPressed: _controller.getUser,
                        child: Text("aaa"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}