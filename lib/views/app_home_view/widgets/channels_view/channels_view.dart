import 'package:flutter/material.dart';
import 'package:jodel_app/views/app_home_view/widgets/channels_view/widgets/channels_view_body.dart';

class ChannelsView extends StatelessWidget {
  const ChannelsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChannelsViewBody(),
    );
  }
}
