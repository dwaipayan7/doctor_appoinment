import 'package:doctor_appoinment/const.dart';
import 'package:doctor_appoinment/model/doctor.dart';
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
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              CircleAvatar(
                radius: 45,
                backgroundColor: Color(doctor.color),
                backgroundImage: NetworkImage(doctor.image),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Dr. ${doctor.name}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: 20),
              ),
              Text(
                doctor.specialist,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white.withOpacity(0.3),
                    child: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 30,),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white.withOpacity(0.3),
                    child: Icon(
                      CupertinoIcons.chat_bubble_text_fill,
                      color: Colors.white,
                    ),
                  ),

                ],
              )
            ],
          ),

          SizedBox(height: 20,),
          Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  )
                ),
                child: Column(
                  children: [
                    Text("About Doctor", style: TextStyle(
                      fontSize: 18,
                      color: blackColor,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 10,),
                    Text("Dr ${doctor.name} ${doctor.about}",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      letterSpacing: 0,
                      color: Colors.black
                    ),textAlign: TextAlign.justify, maxLines: 2,),


                  ],
                ),
              )
          )

        ],
      )),
    );
  }
}
