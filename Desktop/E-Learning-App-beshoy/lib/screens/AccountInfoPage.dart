import 'package:flutter/material.dart';
import 'package:sessiontask/widgets/AccountInfoBox.dart';
import 'package:sessiontask/widgets/AppBars/AccountInfoAppBar.dart';

class AccountInfoPage extends StatelessWidget {
  const AccountInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAccountInfoAppBar(context),
      body: AccountInfoBox(),
    );
  }
}
