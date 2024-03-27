
import 'package:flutter/material.dart';

class FristScreen extends StatelessWidget {
  const FristScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // useing hex code use 0xff
      backgroundColor: const Color(0xff0F1828),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Parking operation details",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 160,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xff244EB9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_alarms,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Time tracking",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.8,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    Text(
                      "00:30:56",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 64,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 160,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xff244EB9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.wallet,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "The accrued cost :",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.8,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    Text(
                      "30 LE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 64,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Center(
                // GestureDetector
                // inkwell
                // snakebar
                child: InkWell(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  onTap: () {
                    // show snackbar
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.green,
                      duration: const Duration(seconds: 5),
                      behavior: SnackBarBehavior.floating,
                      width: 300,
                      action: SnackBarAction(
                        label: "cancle",
                        onPressed: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        },
                      ),
                      content: const Text("OK"),
                      // getx
                    ));
                  },
                  child: Container(
                    width: 80,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "ok",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
// ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     fixedSize: const Size(80, 40),
//                     backgroundColor: const Color(0xff244EB9),
//                   ),
//                   onPressed: () {},
//                   child: const Text(
//                     "OK",
//                     style: TextStyle(
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
