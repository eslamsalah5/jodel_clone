import 'package:flutter/material.dart';
import 'package:jodel_app/views/app_home_view/widgets/home_view/home_coment_tweta.dart';
import 'package:jodel_app/views/app_home_view/widgets/home_view/widgets/text_fild_comment.dart';

class CommentTwetaBody extends StatelessWidget {
  const CommentTwetaBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.rocket_launch),
          ),
          Icon(Icons.share),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.push_pin),
          ),
        ],
      ),
      body: const Stack(
        children: [
          HomeCommentTweta(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextFieldComments(),
            ],
          )
        ],
      ),
    );
  }
}
