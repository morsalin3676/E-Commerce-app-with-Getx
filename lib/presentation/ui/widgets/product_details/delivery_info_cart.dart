import 'package:flutter/material.dart';

class DeliveryInfoCard extends StatelessWidget {
  const DeliveryInfoCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Card(

      margin: const EdgeInsets.all(16),

      child: const ListTile(

        leading: Icon(Icons.local_shipping),

        title: Text("Delivery"),

        subtitle: Text("Delivered within 2-5 business days"),

        trailing: Icon(Icons.arrow_forward_ios,size:16),

      ),
    );
  }
}