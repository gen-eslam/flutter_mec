// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
// ///https://www.figma.com/file/4B3yZIL2XPsKuBOjrYR2D2/Mobile-Sign-in-%26-Sign-up-Design-(Community)?type=design&node-id=4-31&mode=design&t=2lhZqDXbZxJWyFQB-0

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   /// screen 1 => screen 2
//   /// class routs
//   @override
//   Widget build(BuildContext context) {
//     // This widget is the root of your application.
//     return const MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       // theme: ThemeData(
//       //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       //   useMaterial3: true,
//       // ),
//       home: SignUpScreen(),
//     );
//   }
// }

// // class PasswordTextFormField extends StatefulWidget {
// //   const PasswordTextFormField({super.key});

// //   @override
// //   State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
// // }

// // class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
// //   bool obscureText = true;
// //   @override
// //   Widget build(BuildContext context) {
// //     return TextFormField(
// //       obscureText: obscureText,
// //       obscuringCharacter: "#",
// //       decoration: InputDecoration(
// //         hintText: "Password", prefixIcon: const Icon(Icons.password),
// //         suffixIcon: IconButton(
// //             onPressed: () {
// //               setState(() {
// //                 obscureText = !obscureText;
// //               });
// //             },
// //             icon: const Icon(Icons.visibility)),

// //         enabledBorder: const OutlineInputBorder(
// //             borderSide: BorderSide(color: Colors.blue, width: 2)),
// //         // enabled: false,
// //         disabledBorder: const OutlineInputBorder(
// //             borderSide: BorderSide(color: Colors.blue, width: 2)),
// //         focusedBorder: const OutlineInputBorder(
// //             borderRadius: BorderRadius.only(
// //                 topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
// //             borderSide: BorderSide(color: Colors.green, width: 2)),
// //         // focusedErrorBorder: ,
// //         // errorBorder: ,
// //       ),
// //     );
// //   }
// // }
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Navigation',
    theme: ThemeData(
      // This is the theme of your application.
      primarySwatch: Colors.green,
    ),
    home: const FirstRoute(),
  ));
}

int selected = 0;
List<Color> colors = [Colors.red, Colors.green, Colors.blue];

class FirstRoute extends StatefulWidget {
  const FirstRoute({super.key});

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                3,
                (index) => CustomContainer(
                    selected: selected, index: index, color: colors[index])),
          ),
        ));
  }
}

class CustomContainer extends StatefulWidget {
  Color color;
  int selected, index;

  CustomContainer({
    super.key,
    required this.selected,
    required this.index,
    required this.color,
  });

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  IconData? iconData;

  @override
  void didUpdateWidget(covariant CustomContainer oldWidget) {
    if (widget.index == widget.selected) {
      iconData = Icons.check;
    } else {
      iconData = null;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          print(selected);
          selected = widget.index;
        });
      },
      child: Container(
        height: 200,
        width: 200,
        color: widget.color,
        child: Icon(
          iconData,
          size: 100,
          color: Colors.white,
        ),
      ),
    );
  }
}
