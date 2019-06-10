import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';
import 'post_model.dart';
import 'dart:convert';

class PostButtonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ran = Random();
    final postModel = Provider.of<PostModel>(context);
    void changePost() {
      postModel.fetchPost(ran.nextInt(5000));
      postModel.setLoaderShow(true);
    }

    return FloatingActionButton(
      onPressed: changePost,
      child: new Icon(Icons.refresh),
    );
  }
}
