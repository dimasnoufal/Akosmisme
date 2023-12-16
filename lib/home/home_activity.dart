import 'package:flutter/material.dart';
import 'package:project_2_akosmisme/home/akosmisme_ui_design.dart';
import 'package:project_2_akosmisme/home/data/akosmisme_data_model.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Akosmisme"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: AkosmismeDataModel.listofAkosmisme.length,
        itemBuilder: (context, index) {
          return AkosmismeUiDesign(
            eachAkosmisme: AkosmismeDataModel.listofAkosmisme[index],
          );
        },
      ),
    );
  }
}
