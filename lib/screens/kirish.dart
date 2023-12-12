import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFF0F),
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '2');
            },
            child: Center(
              child: Text(
                'Welcome',
                style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '2');
            },
            child: Center(
              child: Text(
                'To',
                style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '2');
            },
            child: Center(
              child: Text(
                'Shoppers',
                style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '2');
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Center(
                child: Image.asset('img/savat.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
