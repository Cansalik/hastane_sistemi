import 'package:flutter/material.dart';
import 'package:hastane_sistemi/classes/Patient.dart';
import 'package:hastane_sistemi/doctor_screens/doctorSettings.dart';
import 'package:hastane_sistemi/doctor_screens/patientDetail.dart';

class patientList extends StatefulWidget {
  const patientList({Key? key}) : super(key: key);

  @override
  State<patientList> createState() => _patientListState();
}

class _patientListState extends State<patientList> {

  Future<List<Patient>> patientList() async {
    final List<Patient> patients = [
      Patient(name: 'Ahmet', surname: 'Yılmaz', appointmentTime: '10:00', gender: true),
      Patient(name: 'Ayşe', surname: 'Kara', appointmentTime: '11:30', gender: false),
      Patient(name: 'Mehmet', surname: 'Öztürk', appointmentTime: '14:45',gender: true),
      Patient(name: 'Selin', surname: 'Çelik', appointmentTime: '11:30', gender: false),
      Patient(name: 'Kazım', surname: 'Çolak', appointmentTime: '11:30', gender: true),
      Patient(name: 'Mehmet', surname: 'Öztürk', appointmentTime: '14:45',gender: true),
      Patient(name: 'Selin', surname: 'Çelik', appointmentTime: '11:30', gender: false),
      Patient(name: 'Kazım', surname: 'Çolak', appointmentTime: '11:30', gender: true),
      Patient(name: 'Mehmet', surname: 'Öztürk', appointmentTime: '14:45',gender: true),
      Patient(name: 'Selin', surname: 'Çelik', appointmentTime: '11:30', gender: false),
      Patient(name: 'Kazım', surname: 'Çolak', appointmentTime: '11:30', gender: true),
    ];
    return patients;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bugünkü Hastalar",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ],
        ),
        backgroundColor: Colors.transparent, // Set the background color to transparent
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.blue.shade300, Colors.blue.shade100],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body:Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.blue.shade100,
                  Colors.blue.shade300,
                  Colors.blue
                ],
                begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: FutureBuilder<List<Patient>>(
              future: patientList(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var patients = snapshot.data;
                  return ListView.builder(
                    itemCount: patients!.length,
                    itemBuilder: (context, index) {
                      var patient = patients[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => patientDetail()));
                        },
                        child: Card(
                          color: index % 2 == 0
                              ? Colors.blue.shade200
                              : Colors.blue.shade100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: patient.gender
                                      ? Image.asset("assets/images/male_patient.png")
                                      : Image.asset("assets/images/female_patient.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${patient.name} ${patient.surname} ",
                                        style: TextStyle(
                                            fontSize: 25, fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "${patient.appointmentTime}",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.pink[400],
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Column(
                      children: [
                        Text("Hata"),
                      ],
                    ),
                  );
                }
              },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => doctorSettings()));
        },
        tooltip: "Ayarlar",
        backgroundColor: Colors.pink,
        child: Icon(Icons.settings,color: Colors.white,),
      ),
    );
  }
}
