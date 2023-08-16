import 'package:flutter/material.dart';
import 'package:hastane_sistemi/classes/Patient.dart';

class patientList extends StatefulWidget {
  const patientList({Key? key}) : super(key: key);

  @override
  State<patientList> createState() => _patientListState();
}

class _patientListState extends State<patientList> {

  Future<List<Patient>> patientList() async {
    final List<Patient> patients = [
      Patient(name: 'Ahmet', surname: 'Yılmaz', appointmentTime: '10:00'),
      Patient(name: 'Ayşe', surname: 'Kara', appointmentTime: '11:30'),
      Patient(name: 'Mehmet', surname: 'Öztürk', appointmentTime: '14:45'),
    ];

    return patients;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Patient>>(
        future: patientList(),
        builder: (context,snapshot)
        {
          if(snapshot.hasData)
          {
            var patients = snapshot.data;

            return ListView.builder(
              itemCount: patients!.length,
              itemBuilder: (context, index)
              {
                var patient = patients[index];
                return GestureDetector(
                  onTap: ()
                  {
                   // Navigator.push(context, MaterialPageRoute(builder: (context) => KisiDetaySayfa(kisi: kisi,)));
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(width: 50,height: 50,child: Image.asset("assets/images/patient.gif")),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${patient.name} ${patient.surname} ",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text("${patient.appointmentTime}",style: TextStyle(fontSize: 16,color: Colors.blue),),
                              ],
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.delete,color: Colors.red[400],),
                            onPressed: ()
                            {
                              //sil(kisi.kisi_id);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          else
          {
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
    );
  }
}
