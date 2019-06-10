import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'post_model.dart';
import 'dart:convert';

class PostImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postModel = Provider.of<PostModel>(context);
    if (postModel.getPost() != null) {
      return Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(16),
                elevation: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        postModel.getPost()['thumbnailUrl'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    ListTile(
                      title: Text(postModel.getPost()['title'].toString()),
                    )
                  ],
                ),
                color: Colors.white70,
              ),
            ],
          ));
    } else if (postModel.getLoaderShow() == true) {
      return CircularProgressIndicator();
    } else {
      return Text('Loading');
    }
  }
}
