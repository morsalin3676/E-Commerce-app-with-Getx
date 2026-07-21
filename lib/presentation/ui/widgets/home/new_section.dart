import 'package:e_commerce1/presentation/ui/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

import '../product_list_model.dart';

class NewSection extends StatelessWidget {
  const NewSection({super.key});

  @override
  Widget build(BuildContext context) {

    return ProductModelSectoin(
      title: "New", onTap: () {

    },);
  }
}