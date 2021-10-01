import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'colors.dart';

class SuccessfulRegister extends StatefulWidget {
  @override
  _SuccessfulRegisterState createState() => _SuccessfulRegisterState();
}

class _SuccessfulRegisterState extends State<SuccessfulRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/Tickmark.png',
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            //Texts and Styling of them
            Text(
              'Hurray!!, You are successfully registered',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(height: 20),
            Text(
              'Now click on the button below to Login',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            //Our MaterialButton which when pressed will take us to a new screen named as
            //LoginScreen
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              elevation: 0,
              height: 50,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginScreen()));
              },
              color: logoPurple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Login',
                      style: TextStyle(color: Colors.white, fontSize: 20))
                ],
              ),
              textColor: Colors.white,
            )
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods;
  }
}
