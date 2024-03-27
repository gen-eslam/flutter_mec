import 'package:flutter/material.dart';
import 'package:flutter_application_1/firest_screen.dart';

void main() {
  runApp(const MyApp());
}
///https://www.figma.com/file/4B3yZIL2XPsKuBOjrYR2D2/Mobile-Sign-in-%26-Sign-up-Design-(Community)?type=design&node-id=4-31&mode=design&t=2lhZqDXbZxJWyFQB-0

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// screen 1 => screen 2
  /// class routs
  @override
  Widget build(BuildContext context) {
    // This widget is the root of your application.
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: SignUpScreen(),
    );
  }
}

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

// class PasswordTextFormField extends StatefulWidget {
//   const PasswordTextFormField({super.key});

//   @override
//   State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
// }

// class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
//   bool obscureText = true;
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       obscureText: obscureText,
//       obscuringCharacter: "#",
//       decoration: InputDecoration(
//         hintText: "Password", prefixIcon: const Icon(Icons.password),
//         suffixIcon: IconButton(
//             onPressed: () {
//               setState(() {
//                 obscureText = !obscureText;
//               });
//             },
//             icon: const Icon(Icons.visibility)),

//         enabledBorder: const OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.blue, width: 2)),
//         // enabled: false,
//         disabledBorder: const OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.blue, width: 2)),
//         focusedBorder: const OutlineInputBorder(
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
//             borderSide: BorderSide(color: Colors.green, width: 2)),
//         // focusedErrorBorder: ,
//         // errorBorder: ,
//       ),
//     );
//   }
// }
