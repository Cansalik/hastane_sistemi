import 'package:flutter/material.dart';

class patientAppointment extends StatefulWidget {
  const patientAppointment({Key? key}) : super(key: key);

  @override
  State<patientAppointment> createState() => _patientAppointmentState();
}

class _patientAppointmentState extends State<patientAppointment> {

  String selectedDoctorBranch = "Dahiliye"; // Başlangıçta seçilen branş
  final List<String> doctorBranches = [
    "Dahiliye",
    "Cerrahi",
    "Kardiyoloji",
    "Nöroloji",
    "Ortopedi"
  ]; // Doktor branşları

  String _selectedDoctor = "NeşetCanSalık"; // Başlangıçta seçilen branş
  final List<String> _doctor = [
    "Ahmet Yılmaz",
    "Ayşe Demir",
    "Mehmet Kara",
    "Zeynep Aktaş",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.yellow.shade100,Colors.yellow.shade300,Colors.yellow],
                begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/heart.png",color: Colors.white,width: 240,height: 240,),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 350,
                  height: 75,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedDoctorBranch,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedDoctorBranch = newValue!;
                          });
                        },
                        items: doctorBranches.map<DropdownMenuItem<String>>((String branch) {
                          return DropdownMenuItem<String>(
                            value: branch,
                            child: Row(
                              children: [
                                Icon(Icons.local_hospital), // İstediğiniz bir simge
                                SizedBox(width: 10),
                                Text(
                                  branch,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: 350,
                  height: 75,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedDoctorBranch,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedDoctorBranch = newValue!;
                          });
                        },
                        items: doctorBranches.map<DropdownMenuItem<String>>((String branch) {
                          return DropdownMenuItem<String>(
                            value: branch,
                            child: Row(
                              children: [
                                Icon(Icons.local_hospital), // İstediğiniz bir simge
                                SizedBox(width: 10),
                                Text(
                                  branch,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  width: 350,
                  height: 75,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedDoctorBranch,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedDoctorBranch = newValue!;
                          });
                        },
                        items: doctorBranches.map<DropdownMenuItem<String>>((String branch) {
                          return DropdownMenuItem<String>(
                            value: branch,
                            child: Row(
                              children: [
                                Icon(Icons.local_hospital), // İstediğiniz bir simge
                                SizedBox(width: 10),
                                Text(
                                  branch,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
