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

  String _selectedDoctor = "Neşet Can SALIK"; // Başlangıçta seçilen branş
  final List<String> _doctor = [
    "Neşet Can SALIK",
    "Mehmet Cansever",
    "Ömer Yurdakul",
    "Musa Atsal",
    "Hasan Çakmak"
  ];

  String _selectedTime = "08.00"; // Başlangıçta seçilen branş
  final List<String> _time = [
    "08.00",
    "08.30",
    "09.00",
    "09.30",
    "10.00",
    "10.30",
  ];

  TextEditingController _controller = TextEditingController();


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
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/doctorAppointment.png",color: Colors.black,width: 240,height: 240,),
                const SizedBox(height: 10,),
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
                                Icon(Icons.local_hospital),
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
                        value: _selectedDoctor,
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedDoctor = newValue!;
                          });
                        },
                        items: _doctor.map<DropdownMenuItem<String>>((String doctor) {
                          return DropdownMenuItem<String>(
                            value: doctor,
                            child: Row(
                              children: [
                                Icon(Icons.local_hospital),
                                SizedBox(width: 10),
                                Text(
                                  doctor,
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
                        value: _selectedTime,
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedTime = newValue!;
                          });
                        },
                        items: _time.map<DropdownMenuItem<String>>((String time) {
                          return DropdownMenuItem<String>(
                            value: time,
                            child: Row(
                              children: [
                                Icon(Icons.local_hospital),
                                SizedBox(width: 10),
                                Text(
                                  time,
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
                TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Şikayetinizi Yazın',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  width: 350,
                  height: 75,
                  child: ElevatedButton(
                    onPressed: ()
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Randevu Oluşturuldu", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          backgroundColor: Colors.white,
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                    child: Text("Randevu Oluştur",style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0.01,
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
