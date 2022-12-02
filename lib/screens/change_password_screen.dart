import 'package:flutter/material.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({Key? key}) : super(key: key);

  @override
  _ChangePassState createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  var obsOld = true;
  var obsNew = true;
  var obsCon = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Password"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const PassField(label: "Old Password"),
              const SizedBox(height: 30),
              const PassField(label: "New Password"),
              const SizedBox(height: 30),
              const PassField(label: "Confirm Password"),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
                onPressed: () {},
                child: const Text(
                  "Change Password",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PassField extends StatefulWidget {
  const PassField({Key? key, required this.label}) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final label;

  @override
  _PassFieldState createState() => _PassFieldState();
}

class _PassFieldState extends State<PassField> {
  var obs = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obs,
      decoration: InputDecoration(
          suffixIcon: obs
              ? IconButton(
                  onPressed: () => {
                        setState(() {
                          obs = !obs;
                        })
                      },
                  icon: const Icon(Icons.visibility))
              : IconButton(
                  onPressed: () => {
                        setState(() {
                          obs = !obs;
                        })
                      },
                  icon: const Icon(Icons.visibility_off)),
          labelText: widget.label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))),
    );
  }
}
