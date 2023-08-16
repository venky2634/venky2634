

import 'dart:html';
import 'dart:html';


import 'package:flutter_application_5/post.dart';
import 'Package/http.dart' as http;
class RemoteService{
  Future<List<Post>?>getPosts() async
  {
    var Client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await Client.get(uri);
    if(response.statuscode == 200){
      var json = response.body;
      postToJson(json);
    }
  
  }
}

