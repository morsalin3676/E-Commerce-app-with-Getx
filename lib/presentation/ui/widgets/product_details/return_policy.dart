import 'package:flutter/material.dart';

class ReturnPolicyCard extends StatelessWidget {

  const ReturnPolicyCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Card(

      margin: const EdgeInsets.symmetric(horizontal: 16),

      child: const ListTile(

        leading: Icon(Icons.assignment_return),

        title: Text("Return Policy"),

        subtitle: Text("Free return within 30 days"),

        trailing: Icon(Icons.arrow_forward_ios,size:16),

      ),
    );
  }
}