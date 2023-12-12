import 'package:flutter/material.dart';

class Arg2Page extends StatelessWidget {
  const Arg2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final arg2 = ModalRoute.of(context)!.settings.arguments as Map;
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
            padding: const EdgeInsets.only(left: 25, top: 50),
            child: Container(
              width: 321,
              height: 117,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 5,
                  )
                ],
              ),
              child: Row(
                children: [
                  Image.asset(arg2['img']),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          arg2['txt'],
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Qty: 1',
                        style: TextStyle(
                          color: Color(0XFF817D7D),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 10),
                        child: Text(
                          arg2['price'],
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 20),
            child: Container(
              width: 321,
              height: 117,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 5,
                  )
                ],
              ),
              child: Row(
                children: [
                  Image.asset(arg2['img']),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          arg2['txt'],
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Qty: 1',
                        style: TextStyle(
                          color: Color(0XFF817D7D),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 10),
                        child: Text(
                          arg2['price'],
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              width: 320,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFC5C3C3),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  'Total  :',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Text(
                'Rs.40000.00',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          SizedBox(
            height: 90,
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
                Navigator.pushNamed(context, '6');
              },
              child: Text(
                'CHECKOUT',
                style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w800),
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
              onPressed: () {
                Navigator.pushNamed(context, '6');
              },
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
