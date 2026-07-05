import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      return "Hello Async functions";
    });
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return "Ali, Welocme again to our page";
    });
    print('$username - $bio');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
      // body: OutlinedButton(
      //   onPressed: () {
      //     setState(() {
      //       counter += 1;
      //     });
      //   },
      //   child: Text('Counter is $counter'),
      // ),
    );
  }
}
