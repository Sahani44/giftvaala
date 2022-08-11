import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:giftvaala/policy_model/policies.dart';
import '../policy_model/policies_widget.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
    title: const Text('Policies'),
    centerTitle: true,
    ),
    body: FutureBuilder<List<Policy>>(
      future: loadPolicy(context),
      builder: (context , snapshot){

        switch (snapshot.connectionState) {
          
          case ConnectionState.waiting:
            return const Center(child: CircularProgressIndicator(color: Colors.pink),);
          default:
            if(snapshot.hasError){
              return const Center(child: Text('Something went wrong'),);
            } else {
              final policies = snapshot.data!;
              return PoliciesWidget(policies: policies);
            }
        }
      },
    ),
  );

  Future<List<Policy>> loadPolicy(BuildContext context) async {

    final bundle = DefaultAssetBundle.of(context);
    final policies = await bundle.loadString('assets/policies.json');

    return json
        .decode(policies)
        .map<Policy>((policies) => Policy.fromJson(policies))
        .toList();
  }
}