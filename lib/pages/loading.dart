import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Lodaing extends StatefulWidget {
  const Lodaing({super.key});

  @override
  State<Lodaing> createState() => _LodaingState();
}

class _LodaingState extends State<Lodaing> {
  void getData() async {
    Response response = await get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos/1'),
    );
    Map data = jsonDecode(response.body);
    print(data);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Loading Screen"));
  }
}
