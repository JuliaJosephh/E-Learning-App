import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class PandasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pandas', style: poppins.copyWith(fontSize: 14)),
      ),
      body: Center(
        child: Text('Welcome to the Pandas page!',
            style: poppins.copyWith(fontSize: 14)),
      ),
    );
  }
}
