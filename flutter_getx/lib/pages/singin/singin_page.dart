import 'package:flutter/material.dart';
import 'package:flutter_getx/utils/constants/colors.dart';

class SingInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorDefault,
      body: Container(
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
                TextField(
                  controller: TextEditingController(text: ""),                  
                  decoration: InputDecoration(
                    hintText: "Digite seu nome",
                    filled: true,
                    fillColor: Colors.white,
                    hoverColor: Colors.white,
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    suffixIcon: GestureDetector(
                      onTap: (){
                        print("tap");
                      },
                      child: Icon(Icons.chevron_right),
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}