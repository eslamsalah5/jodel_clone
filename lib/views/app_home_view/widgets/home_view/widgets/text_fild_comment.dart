import 'package:flutter/material.dart';

class TextFieldComments extends StatefulWidget {
  const TextFieldComments({super.key});

  @override
  State<TextFieldComments> createState() => _TextFieldCommentsState();
}

class _TextFieldCommentsState extends State<TextFieldComments> {
  final formKey = GlobalKey<FormState>();
  TextEditingController user = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Directionality(
      textDirection: TextDirection.ltr,
      child: TextFormField(
        controller: user,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: '#!ردود ايجابيه فقط',
            filled: true,
            fillColor: Colors.white70,
            hintMaxLines: 2,
            hintStyle: const TextStyle(
              fontSize: 25,
            ),
            suffixIcon: IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt)),
            suffixIconColor: Colors.black),
      ),
    );
  }
}
