import 'package:doctor_appoinment/model/symptom.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    Expanded(
                      child: Container(
                        padding:  const EdgeInsets.all(15),
                        decoration:  BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: purpleColor.withOpacity(0.2),
                                blurRadius: 15,
                                spreadRadius: 5,
                                offset: const Offset(-0, 10)
                              )
                            ],
                          color: Colors.purple,
                          borderRadius:BorderRadius.circular(15),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.add_circle,
                            size: 60,
                              color: Colors.white,
                            ),
                            SizedBox(height: 40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Clinic Visit", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                Text("Make an appointment",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0
                                ),)
                              ],
                            ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Container(
                        padding:  const EdgeInsets.all(15),
                        decoration:  BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: greyColor.withOpacity(0.2),
                                blurRadius: 15,
                                spreadRadius: 5,
                                offset: const Offset(-0, 10)
                            )
                          ],
                          color: Colors.white,
                          borderRadius:BorderRadius.circular(15),
                        ),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: purpleColor.withOpacity(0.15),
                                shape: BoxShape.circle
                              ),
                              padding: EdgeInsets.all(12),
                              child: Icon(Icons.home_filled,
                                size: 30,
                                color: purpleColor,

                              ),
                            ),
                            SizedBox(height: 40,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Home Visit", style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                  Text("Call the doctor at home",
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0
                                    ),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                ),

                SizedBox(height: 30,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text("What are your symptoms?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: -5),),
                ),
                SizedBox(height: 15,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      ...List.generate(
                          symptoms.length,
                          (index)=> Padding(
                              padding: index == 0
                              ?EdgeInsets.only(left: 15, right: 15)
                                  : EdgeInsets.only(right: 15),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 18,vertical: 15),
                              decoration: BoxDecoration(
                                color: greyColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),

                              ),
                            ),
                          )
                      )
                    ],
                  ),
                )

              ],
        )
    );
  }
}
