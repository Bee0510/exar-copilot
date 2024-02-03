// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace
import 'package:exar_co/components/custom_button.dart';
import 'package:exar_co/components/patient_list.dart';
import 'package:exar_co/components/search_bar.dart';
import 'package:exar_co/constants/color.dart';
import 'package:flutter/material.dart';

class patient_section extends StatelessWidget {
  const patient_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.98,
      decoration: BoxDecoration(
        color: colorConstant().whiteColor,
        borderRadius: BorderRadius.circular(24.0),
      ),
      padding: EdgeInsets.all(4.0),
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20.0),
              height: MediaQuery.of(context).size.height * 0.86,
              width: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                color: colorConstant().primaryColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                  child: Column(
                children: [
                  CustomButton(
                    height: 50,
                    width: 200,
                    onPressed: () {
                      print('onPresseed');
                    },
                    widget: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.add,
                          color: colorConstant().secondaryColor,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('Add Patient',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                color: colorConstant().secondaryColor,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    green: false,
                  ),
                  SizedBox(height: 30),
                  search_bar(),
                  SizedBox(height: 10),
                  patient_list(),
                ],
              )),
            ),
            SizedBox(height: 3),
            doctor_details()
          ],
        ),
      ),
    );
  }
}

class doctor_details extends StatelessWidget {
  const doctor_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(4.0),
        width: MediaQuery.of(context).size.width * 0.2,
        height: 100,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 310,
              height: 60,
              child: Row(
                children: [
                  //doctor's pic
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: colorConstant().secondaryColor,
                      image: DecorationImage(
                        image: AssetImage('assets/docpic.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //doctor's name and email
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Dr.Gaurav',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  color: colorConstant().blackColor,
                                  fontWeight: FontWeight.w600)),
                          Text('gaurav@exar.fit',
                              style: TextStyle(
                                  color: colorConstant().greyColor,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //more icon
            Icon(
              Icons.keyboard_arrow_down_sharp,
              color: colorConstant().blackColor,
            )
          ],
        )));
  }
}
