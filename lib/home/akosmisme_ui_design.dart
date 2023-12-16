import 'package:flutter/material.dart';
import 'package:project_2_akosmisme/home/ar_view.dart';
import 'package:project_2_akosmisme/home/data/akosmisme.dart';

class AkosmismeUiDesign extends StatelessWidget {
  final Akosmisme eachAkosmisme;

  const AkosmismeUiDesign({
    super.key,
    required this.eachAkosmisme,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 8.0, left: 8.0, top: 8.0, bottom: 4.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (c) => ArView(
                        eachAkosmisme.image,
                      )));
        },
        child: Card(
          elevation: 5,
          child: ListTile(
            leading: Image.asset(
              eachAkosmisme.image,
              height: 150,
              width: 150,
            ),
            title: Center(
              child: Text(
                eachAkosmisme.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
