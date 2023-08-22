import 'package:flutter/material.dart';
import 'package:jodel_app/core/utils/constants.dart';
import 'package:jodel_app/generated/l10n.dart';
import 'package:jodel_app/shared/styles/mode/cubit.dart';

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
    return Material(
      elevation: 30,
      shadowColor: Colors.green,
      child: TextFormField(
        controller: user,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: S.of(context).comment_text_form_hint,
          filled: true,
          fillColor:
              ModeCubit.get(context).isDark ? Color(0xff26252A) : Colors.white,
          hintMaxLines: 2,
          hintStyle: TextStyle(
            fontSize: 18,
            color: ModeCubit.get(context).isDark ? Colors.grey : Colors.black,
          ),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: ModeCubit.get(context).isDark ? Colors.grey : Colors.black,
          ),
        ),
      ),
    );
  }
}