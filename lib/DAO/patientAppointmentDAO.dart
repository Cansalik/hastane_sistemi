import 'package:hastane_sistemi/DAO/databaseAssistant.dart';
import 'package:hastane_sistemi/classes/Branches.dart';


class patientAppointmentDAO
{
  Future<List<Branches>> branchList() async
  {
    var db = await databaseAssistant.databaseAccess();

    List<Map<String,dynamic>> Maps = await db.rawQuery("SELECT * FROM tbl_Branches");

    return List.generate(Maps.length, (index)
    {
      var satir = Maps[index];

      var B = Branches(satir["Branch_ID"], satir["Branch_Name"]);
      return B;
    });
  }

  Future<List<Branches>> doctorList() async
  {
    var db = await databaseAssistant.databaseAccess();

    List<Map<String,dynamic>> Maps = await db.rawQuery("SELECT * FROM tbl_Branches");

    return List.generate(Maps.length, (index)
    {
      var satir = Maps[index];

      var B = Branches(satir["Branch_ID"], satir["Branch_Name"]);
      return B;
    });
  }
}