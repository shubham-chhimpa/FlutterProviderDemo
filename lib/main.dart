import 'package:fetch_photo/post_progress_view.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'post_button_view.dart';
import './post_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: ChangeNotifierProvider<PostModel>(
        builder: (_) => PostModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Provider Demo'),
          ),
          body: PostProgressView(),
          floatingActionButton: PostButtonView(),
        ),
      ),
    );
  }
}
