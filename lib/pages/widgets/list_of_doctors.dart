import 'package:doctor_appoinment/const.dart';
import 'package:flutter/material.dart';
import '../../model/doctor.dart';

class ListOfDoctor extends StatelessWidget {
  final Doctor doctor;
  const ListOfDoctor({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(18),
        width: MediaQuery.of(context).size.width / 2.24,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: greyColor.withOpacity(0.2),
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Color(doctor.color),
                backgroundImage: NetworkImage(
                  doctor.image,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Center(
              child: Text(
                "Dr. ${doctor.name}",
                style: const TextStyle(
                  fontSize: 18,
                  letterSpacing: -.5,
                  color: blackColor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 5),
            Center(
              child: Text(
                doctor.specialist,
                style: const TextStyle(
                  color: Colors.black26,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.orange[50],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      rate(doctor).toStringAsFixed(1),
                      style: const TextStyle(color: Colors.black),
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
