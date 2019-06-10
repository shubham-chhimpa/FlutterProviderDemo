import 'package:fetch_photo/post_image_view.dart';
import 'package:fetch_photo/post_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostProgressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postModel = Provider.of<PostModel>(context);
    if (postModel.getLoaderShow() == true) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return PostImageView();
    }
  }
}