import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/Constant.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Register',
            ),
          ),
          body: Form(
            key: formkey,
            child: SingleChildScrollView(
                child: Column(
              children: [
                txtName(),
                txtSurName(),
                txtEmail(),
                txtPassword(),
                btnSubmit(),
              ],
            )),
          )),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
      child: TextFormField(
          style: TextStyle(fontSize: 24, color: PColor),
          decoration: InputDecoration(
            labelText: 'Name:',
            icon: Icon(Icons.account_circle),
            hintText: 'Inpunt your name',
          ),
          // ignore: non_constant_identifier_names
          validator: (Value) {
            if (Value!.isEmpty) {
              return 'กรุณากรอกข้อมูลด้วย';
            } else if (Value.length < 2) {
              return 'กรุณาใส่ข้อมูลมากกว่า 2 ตัวอักษร';
            }
          },
          // ignore: non_constant_identifier_names
          onSaved: (Value) {
            name = Value!.trim();
          }),
    );
  }

  Widget txtSurName() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
      child: TextFormField(
          style: TextStyle(fontSize: 24, color: PColor),
          decoration: InputDecoration(
            labelText: 'SurName:',
            icon: Icon(Icons.add_reaction_sharp),
            hintText: 'Inpunt your name',
          ),
          // ignore: non_constant_identifier_names
          validator: (Value) {
            if (Value!.isEmpty) {
              return 'กรุณากรอกข้อมูลด้วย';
            } else if (Value.length < 2) {
              return 'กรุณาใส่ข้อมูลมากกว่า 2 ตัวอักษร';
            }
          },
          // ignore: non_constant_identifier_names
          onSaved: (Value) {
            surname = Value!.trim();
          }),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
      child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(fontSize: 24, color: PColor),
          decoration: InputDecoration(
            labelText: 'Email:',
            icon: Icon(Icons.email),
            hintText: 'Inpunt your Email',
          ),
          // ignore: non_constant_identifier_names
          validator: (Value) {
            if (!(Value!.contains('@'))) {
              return 'กรุณากรอกข้อมูลด้วย';
            } else if (Value.contains('.')) {
              return 'กรุณากรอกข้อมูลตามรูปแบบ Email ด้วย';
            }
          },
          // ignore: non_constant_identifier_names
          onSaved: (Value) {
            email = Value!.trim();
          }),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
      child: TextFormField(
          obscureText: true,
          style: TextStyle(fontSize: 24, color: PColor),
          decoration: InputDecoration(
            labelText: 'Password:',
            icon: Icon(Icons.lock),
            hintText: 'Inpunt your Password',
          ),
          // ignore: non_constant_identifier_names
          validator: (Value) {
            if (Value!.isEmpty) {
              return 'กรุณากรอกข้อมูลด้วย';
            } else if (Value.length < 8) {
              return 'กรุณาใส่ข้อมูลมากกว่า 8 ตัวอักษร';
            }
          },
          // ignore: non_constant_identifier_names
          onSaved: (Value) {
            password = Value!.trim();
          }),
    );
  }

  Widget btnSubmit() => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: PColor,
        ),
        onPressed: () {
          print("hello");
          if (formkey.currentState!.validate()) {
            formkey.currentState!.save();
            print(
                "Name : $name Surname : $surname :Email : $email Password : $password");
            formkey.currentState!.reset();
          }
        },
        child: Text('Submit'),
      );
}
