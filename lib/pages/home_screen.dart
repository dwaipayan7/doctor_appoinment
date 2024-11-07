import 'package:flutter/material.dart';

import '../const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
              children: [
                Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          const Text("Dwaipayan", style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: blackColor
                          ),
                          ),
                          const SizedBox(width: 10,),
                          Image.asset("assets/doctor-appoinment/hand.png",
                            height: 40,
                            width: 40,)
                        ],
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 27,
                        backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-photo/portrait-3d-female-doctor_23-2151107332.jpg"
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 20,),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(

                      ),
                    )
                  ],
                ),
                )

              ],
        )
    );
  }
}
