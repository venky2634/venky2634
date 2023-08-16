
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_5/post.dart';

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  List<Post>? posts;
  var isLoaded = false;

  @override  
  void initState() {
    super.initState();

    getData();
  }

  getData()async{
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      centerTitle: true,
      title: Text("Post",style: TextStyle(fontSize: 25,color: Colors.black),),
    ),
    body: ListView.builder(
      itemCount: 10,
      itemBuilder: (context,index){
        return Container(
          child: Text("Hi"),
        ); 
      }),
    );
  }
}