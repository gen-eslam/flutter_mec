
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
           
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign up",
              style: TextStyle(
                color: Color(0xff471AA0),
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 40),
            // // navigation
            // creaete firest screen
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Email", prefixIcon: Icon(Icons.email),
                // border: ,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
                // enabled: false,
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    borderSide: BorderSide(color: Colors.green, width: 2)),
                // focusedErrorBorder: ,
                // errorBorder: ,
              ),
            ),
            const SizedBox(height: 40),
            TextFormField(
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: "Password", prefixIcon: const Icon(Icons.password),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: const Icon(Icons.visibility)),
                // border: ,
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
                // enabled: false,
                disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    borderSide: BorderSide(color: Colors.green, width: 2)),
                // focusedErrorBorder: ,
                // errorBorder: ,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
