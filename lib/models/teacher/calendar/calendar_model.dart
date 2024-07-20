class AddEventModel{
  final String? type;
  final String? iconUrl;
  final DateTime? date;
  AddEventModel({this.type,this.iconUrl,this.date});
}


class ModelAddEvent {
  Map? contactMap;
  String? date;
  Map? repeatEventMap;
  String? note;
  String? reminders;
  String? title;
  bool? isfav;
  String? cat;
  String? iconUrl;
  String? docId;

  ModelAddEvent(
      {
        this.date,
        this.title,
        this.contactMap,
        this.isfav,
        this.iconUrl,
        this.note,
        this.reminders,
        this.repeatEventMap,
        this.cat,
        this.docId

      });

  ModelAddEvent.fromJson(Map<String, dynamic> map) {
    contactMap=map["contact"];
    date=map["date"];
    repeatEventMap=map["repeatEvent"];
    title=map["title"];
    isfav=map["isFavourite"];
    note=map["note"];
    reminders=map["reminder"];
    cat=map["category"];
    this.docId=map["doc_Id"];

  }
}

