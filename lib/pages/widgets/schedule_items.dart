import 'package:doctor_appoinment/model/schedule.dart';
import 'package:flutter/material.dart';

class ScheduleItems extends StatelessWidget {
  const ScheduleItems({super.key, required Schedule schedule});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                offset: Offset.zero,
                color: Colors.grey.withOpacity(0.2)
            )
          ]
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
