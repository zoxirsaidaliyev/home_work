import 'package:flutter/material.dart';

class HelloPage extends StatelessWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Shoppers',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Center(
              child: Text(
                'Hello Silva',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xFFF8EE05),
                ),
                minimumSize: MaterialStatePropertyAll(
                  Size(270, 50),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '7');
              },
              child: Text(
                'CHECKOUT',
                style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: IconButton(
              focusColor: Colors.amber,
              color: Colors.black,
              iconSize: 30,
              onPressed: () {
                Navigator.pushNamed(context, '3');
              },
              icon: Icon(
                Icons.home_outlined,
              ),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: IconButton(
              focusColor: Colors.amber,
              color: Colors.black,
              iconSize: 30,
              onPressed: () {},
              icon: Icon(
                Icons.person_outline,
              ),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: IconButton(
              focusColor: Colors.amber,
              color: Colors.black,
              iconSize: 30,
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
            ),
            label: ''),
      ]),
    );
  }
}
