import 'package:e_bus_ticketing/screens/screens.dart';
import 'package:e_bus_ticketing/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static const routeName = "/signup";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Create Account",
                      style: TextStyle(fontSize: 24),
                    ),
                    const Text("Please fill the input below here"),
                    const SizedBox(height: 24),
                    const TextFields(
                      labelText: "User Name",
                      prefixIcon: Icon(Icons.person),
                    ),
                    const SizedBox(height: 24),
                    const TextFields(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                    ),
                    const SizedBox(height: 24),
                    const PasswordField(
                        labelText: "Password", prefixIcon: Icon(Icons.lock)),
                    const SizedBox(height: 24),
                    const PasswordField(
                        labelText: "Confirm Password",
                        prefixIcon: Icon(Icons.lock)),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            )),
                            onPressed: () {
                              Navigator.pushNamed(context, NavScreen.routeName);
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have account?",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, SignInPage.routeName);
                          },
                          child: const Text("Sign In"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
