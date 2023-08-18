import 'package:flutter/material.dart';
import 'package:hastane_sistemi/reusable_widgets/reusable_widget.dart';

class patientRegister extends StatefulWidget {
  const patientRegister({Key? key}) : super(key: key);

  @override
  State<patientRegister> createState() => _patientRegisterState();
}

class _patientRegisterState extends State<patientRegister> {


  TextEditingController _userTcTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _userSurNameTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.yellow.shade100,Colors.yellow.shade300,Colors.yellow.shade400],
                begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/heartbeat.png"),
                const SizedBox(height: 30,),
                reusableTextFieldBlack("T.C. Kimlik Numarası",Icons.numbers, false, _userTcTextController),
                const SizedBox(height: 10,),
                reusableTextFieldBlack("Adı", Icons.abc, false, _userNameTextController),
                const SizedBox(height: 10,),
                reusableTextFieldBlack("Soyadı", Icons.abc, false, _userSurNameTextController),
                const SizedBox(height: 10,),
                reusableTextFieldBlack("Şifre", Icons.lock, false, _passwordTextController),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    width: 350,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Kayıt Başarılı", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            backgroundColor: Colors.black,
                            duration: Duration(seconds: 1),
                          ),
                        );
                        Navigator.pop(context);
                      },
                      child: Text("Kayıt Ol", style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
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
