import 'package:exar_co/constants/color.dart';
import 'package:flutter/material.dart';

import '../model/patient.dart';

class patient_list extends StatefulWidget {
  const patient_list({super.key});

  @override
  State<patient_list> createState() => _patient_listState();
}

class _patient_listState extends State<patient_list> {
  List<Patient> patients = [
    Patient(name: 'Kenyan Fransisko', gender: 'Male', age: 25),
    Patient(name: 'Albert Hussain', gender: 'Male', age: 30),
    Patient(name: 'Antony Brin', gender: 'Male', age: 40),
    Patient(name: 'Daniel Mathew', gender: 'Male', age: 25),
    Patient(name: 'Joseph Christofer', gender: 'Female', age: 30),
    Patient(name: 'Nicolas Hussain', gender: 'Male', age: 40),
    Patient(name: 'John Doe', gender: 'Male', age: 25),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.65,
        child: ListView.builder(
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: patients.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildPatientListItem(patients[index], index);
          },
        ),
      ),
    );
  }

  Widget _buildPatientListItem(Patient patient, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: selectedIndex == index
                  ? colorConstant().secondaryColor
                  : colorConstant().primaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  patient.name,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: selectedIndex == index
                          ? colorConstant().whiteColor
                          : colorConstant().blackColor,
                      fontWeight: FontWeight.w400),
                ),
                subtitle: Text(
                  '${patient.gender}, ${patient.age} Years',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: selectedIndex == index
                          ? colorConstant().whiteColor
                          : colorConstant().secondaryColor,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                height: 1.0,
                color: selectedIndex == index
                    ? Colors.transparent
                    : colorConstant().secondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
