import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 130,
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Welcome Back !',
                style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Login with Username & password',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 50),
          Container(
            width: 341,
            height: 400,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35, right: 170),
                  child: Text(
                    'Username',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: BorderSide(color: Colors.white))),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 170),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: BorderSide(color: Colors.white))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color(0xFFF8EE05)),
                      minimumSize: MaterialStatePropertyAll(
                        Size(270, 50),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '3');
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Color(0xFFD04343),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Text('Create a new account? '),
              ),
              Text(
                'Sign up',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          )
        ],
      ),
    );
  }
}
