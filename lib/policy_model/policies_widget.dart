import 'package:flutter/material.dart';
import 'package:giftvaala/policy_model/policies.dart';

class PoliciesWidget extends StatelessWidget {
  final List<Policy> policies;

  const PoliciesWidget({Key? key, required this.policies}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.builder(
    padding: const EdgeInsets.only(bottom: 24),
    itemCount: policies.length,
    itemBuilder: (context , index){
      final policy = policies[index];

      return ListTile(
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Text(
            policy.title,
            style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
          ),
        ),
        subtitle: Text(
          policy.text,
          style: const TextStyle(color: Colors.black),
        ),
      );
    },
  );
}