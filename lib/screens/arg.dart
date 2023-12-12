import 'package:flutter/material.dart';

class ArgPage extends StatelessWidget {
  const ArgPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 40),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.amber,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '3');
                    },
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 180,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 40),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.amber,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Image.asset(arg['img.katta']),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              arg['txt'],
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              arg['price'],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll(Color(0xFFF8EE05)),
                minimumSize: MaterialStatePropertyAll(Size(270, 50)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '5', arguments: arg);
              },
              child: Text(
                'Add To Cart',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'More Details',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Gear up with the latest collections from\nadidas Originals, Running, Football, Training. \nWith over 20,000+ products, you will never\nrun out of choice. Grab your favorites now.\nSecure Payments. 100% Original Products.\nGear up with adidas.',
              style: TextStyle(
                color: Color(0xFFAAA7A7),
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
