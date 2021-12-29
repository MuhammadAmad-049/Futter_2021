// ignore_for_file: file_names

class NewEntry {
  String name = "";
  String contact = "";
  String address = "";
  String lenght = "";
  String armLength = "";
  String teera = "";
  String ghera = "";
  String shalwarLength = "";
  String paincha = "";
  String collarTip = "";
  String cuff = "";
  String frontPocket = "";
  String sidePocket = "";
  String shalwarPocket = "";
  String boundary = "";

  NewEntry(
      {required this.name,
      required this.contact,
      required this.address,
      required this.lenght,
      required this.armLength,
      required this.teera,
      required this.ghera,
      required this.shalwarLength,
      required this.paincha,
      required this.collarTip,
      required this.cuff,
      required this.frontPocket,
      required this.sidePocket,
      required this.shalwarPocket,
      required this.boundary});
  Map toJson() {
    Map<String, dynamic> map = {
      "name": name,
      "address": address,
      "contact": contact,
      "lenght": lenght,
      "armLenght": armLength,
      "teera": teera,
      "ghera": ghera,
      "shalwarLenght": shalwarLength,
      "paincha": paincha,
      "collarTip": collarTip,
      "cuff": cuff,
      "frontPocket": frontPocket,
      "sidePocket": sidePocket,
      "shalwarPocket": shalwarPocket,
      "boundary": boundary,
    };
    return map;
  }
}
