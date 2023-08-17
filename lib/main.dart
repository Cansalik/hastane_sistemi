import 'package:flutter/material.dart';
import 'package:hastane_sistemi/doctor_screens/doctorSettings.dart';
import 'package:hastane_sistemi/doctor_screens/patientDetail.dart';
import 'package:hastane_sistemi/doctor_screens/patientList.dart';
import 'package:hastane_sistemi/log_in_screens/Begin.dart';
import 'package:hastane_sistemi/patient_screens/patientAppointment.dart';
import 'package:hastane_sistemi/patient_screens/patientMain.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  patientAppointment(),
    );
  }
}