import 'dart:convert';

import 'package:fetch/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

List postlists = [];

Future getPostApi() async {
  final Response =
      await http.get(Uri.parse("https:jsonplaceholder.typicode.com/posts"));
  var data = jsonDecode(Response.body.toString());
  if (Response.statusCode == 200) {
    for (Map i in data) {
      postlists.add(PostModel.fromJson(i));
    }
    return postlists;
  } else {
    return postlists;
  }
}
