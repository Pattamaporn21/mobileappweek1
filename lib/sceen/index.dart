import 'package:flutter/material.dart';

// ignore: unused_import
import '../config/Constant.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //ตั้งค่าขนาดหน้าจอของแต่ละรุ่น

    return Scaffold(
        body: Container(
          color: Colors.yellow[100],
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          Positioned(
            top: 400,
            left: 190,
            child: Image.asset(
              "asset/img/o.png",
              width: 200,
                height: 200,
                
            ),
          ),
          Positioned(
            top: 620,
            right: 230,
            child: Image.asset(
              "asset/img/o.png",
              width: 200,
                height: 200,
                
            ),
          ),
            Positioned(
            top: -50,
            right: 270,
            child: Image.asset(
              "asset/img/o.png",
              width: 200,
                height: 200,
                
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          SizedBox(
                  height: 20,
                ),
              Image.asset(
                "asset/img/logo.png",
                width: size.width * 0.4,
                //height: size.width * 0.5,
              ),
            SizedBox(
                  height: 20,
                ),
              Text(
                "Welcome To KMUTNB",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 32,
                  fontFamily: 'courier',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"),
                width: 350,
                height: 350,
              ),
              SizedBox(
                  height: 20,
                ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: jColor,
                  padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  print("Hello world");
                  Navigator.pushNamed(context, 'login'); //กดให้ไปหน้าถัดไป
                },
              ),
              SizedBox(
                  height: 20,
                ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: PColor,//
                  padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  print("Hello world");
                   Navigator.pushNamed(context, 'Register');
                },
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
