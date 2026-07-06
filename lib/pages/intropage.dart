import 'package:flutter/material.dart';
import 'package:working/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           Padding(
             padding: const EdgeInsets.all(25),
             child: Image.asset('assets/nike-logo.png', height: 120),
           ),
           SizedBox(height: 48,),
           Text("Just Do It", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
           ),),
           SizedBox(height: 24),
            Text("Brand new sneakers and custom kicks made with premium quality", style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            
           ),
           textAlign: TextAlign.center,
           ),
           SizedBox(height: 48,),
           GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
             child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12)
              ),
              padding: EdgeInsets.all(25),
              child: Center(
                child: Text("Shop Now", 
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
              )
              )),
             ),
           )
            ],
          ),
        ),
      ),
    );
  }
}