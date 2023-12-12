import 'package:flutter/material.dart';
import 'package:home_work/malumot/m.dart';

final name = shop;

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: GridView.builder(
        padding: EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 55,
          mainAxisSpacing: 35,
          mainAxisExtent: 180,
        ),
        itemCount: 6,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '4', arguments: name[index]);
            },
            child: Container(
              width: 134,
              height: 169,
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
                  ),
                ],
              ),
              child: Column(
                children: [
                  Image.asset(name[index]['img']),
                  Text(
                    name[index]['txt'],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    name[index]['price'],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          );
        }),
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
