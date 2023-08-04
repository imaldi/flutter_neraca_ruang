import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/privacy_policy.dart';

import '../../core/consts/sizes.dart';

@RoutePage()
class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Privacy Policy"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(medium),
          child: SingleChildScrollView(
            child: Text(
              privacyPolicy
            ),
          ),
        ),
      ),
    );
  }
}
