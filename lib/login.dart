import 'package:flutter/material.dart';
import 'package:sign_up/sign_up.dart';
import 'package:sign_up/utills.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
              child: Text("LOGIN",
                  style:textStyle(30, Colors.black,FontWeight.bold))),
          SizedBox(
            height: 80,
            width: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(

                  // border: InputBorder.none,
                  prefixIcon: Icon(Icons.person, color: Colors.black),
                  hintText: 'Username',
                  hintStyle: textStyle(20, Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password, color: Colors.black),
                  hintText: 'Password',
                  hintStyle: textStyle(20, Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
          SizedBox(height: 10),
          TextButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  "Forget Password?",
                  style: textStyle(20, Colors.black),
                ),
              )),
          SizedBox(height: 50),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40),
              child: ElevatedButton(
                onPressed: () {},
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Login",
                      style: textStyle(20, Colors.black),
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.blueGrey),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Does not have account?",style: textStyle(20, Colors.black),),
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>SignUp()));
                  },
                  child: Text("Sign Up",style: textStyle(20, Colors.black),))
            ],
          )
        ],
      ),
    );
  }
}
