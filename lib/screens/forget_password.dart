import 'package:e_bus_ticketing/widgets/text_fields.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);
  static const routeName = "/forgetpassword";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forget Password"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TextFields(
                  labelText: "Email", prefixIcon: Icon(Icons.email)),
              const SizedBox(height: 24),
              ElevatedButton(onPressed: () {}, child: const Text("Get Code"))
            ],
          ),
        ),
      ),
    );
  }
}
