import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_cart/pages/home2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(
                bottom: 80, left: 80, right: 80, top: 120),
            child: Image.asset('lib/images/avocado.png'),
          ),
          // text

          Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              'We deliver Groceries at your doorstep',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                  fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),

          // subtitle
          const SizedBox(
            height: 20,
          ),
          Text(
            'Fresh Items Everyday',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),

          const Spacer(),
          // Get started
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return HomePage2();
            })),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12)),
              child: const Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
