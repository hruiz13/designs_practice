import 'package:designs/src/widgets/card_table.dart';
import 'package:designs/src/widgets/custom_bottom_navigation.dart';
import 'package:designs/src/widgets/page_title.dart';
import 'package:flutter/material.dart';

import '../widgets/background.dart';

class CompouseScreen extends StatelessWidget {
   
  const CompouseScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Background(),

          _MainBody()
        ],
      
      ),
      bottomNavigationBar: CustomNavigation(),
    );
  }
}

class _MainBody extends StatelessWidget {
  const _MainBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [

          //titles
          PageTitle(),

          //card table
          CardTable()

        ],
      )

    );
  }
}