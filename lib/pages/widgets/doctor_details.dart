import 'package:doctor_appoinment/const.dart';
import 'package:doctor_appoinment/model/doctor.dart';
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
            const SizedBox(height: 20),
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
                          Text(
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
