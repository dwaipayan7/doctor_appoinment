import 'package:doctor_appoinment/const.dart';
import 'package:doctor_appoinment/model/doctor.dart';
import 'package:doctor_appoinment/pages/schedule_screen.dart';
import 'package:doctor_appoinment/pages/widgets/review_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  final Doctor doctor;
  const DoctorDetails({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      extendBody: true,
      body: SafeArea(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 45,
                  backgroundColor: Color(doctor.color),
                  backgroundImage: NetworkImage(doctor.image),
                ),
                const SizedBox(height: 18),
                Text(
                  "Dr. ${doctor.name}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: 20,
                  ),
                ),
                Text(
                  doctor.specialist,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white.withOpacity(0.3),
                      child: const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 30),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white.withOpacity(0.3),
                      child: const Icon(
                        CupertinoIcons.chat_bubble_text_fill,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "About Doctor",
                        style: TextStyle(
                          fontSize: 18,
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "Dr ${doctor.name} ${doctor.about}",
                        style: const TextStyle(
                          fontSize: 16,
                          height: 1.5,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Reviews",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Icon(
                                Icons.star,
                                color: Colors.amber[800],
                              ),
                              const SizedBox(width: 5),
                              Text(
                                rate(doctor).toStringAsFixed(1),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "/${doctor.reviews.length}",
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "See all",
                            style: TextStyle(
                              color: purpleColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          doctor.reviews.length,
                              (index) => Padding(
                            padding: index == 0
                                ? const EdgeInsets.only(left: 15, right: 15)
                                : const EdgeInsets.only(right: 15),
                            child: // Add your review widget here
                            ReviewItems(review: doctor.reviews[index],)
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20,),

                     Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Text(
                            "Location",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -.5
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.purple.withOpacity(0.3)
                                ),
                                child: Icon(
                                  Icons.location_on,
                                  color: Colors.purple,
                                ),
                              ),
                              SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Lotus Medical Center",
                                  style: TextStyle(
                                    fontSize: 18,
                                    letterSpacing: -.5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  ),),

                                  SizedBox(height: 5,),
                                  Text(
                                   doctor.location,
                                    style: TextStyle(
                                      color: Colors.grey
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
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
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5
            )
          ],
          color: Colors.white
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Consultation Price",
                  style: TextStyle(
                    letterSpacing: 0,
                    color: Colors.grey
                  ),
                ),
                Text(
                  "\$${doctor.price}",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScheduleScreen()));
                  },
                  child: Text(
                    "Book Apoinment",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
