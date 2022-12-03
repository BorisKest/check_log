const String checkId = '_id';
const String checkData = 'data';
const String checkTitle = 'title';
const String checkDescripton = 'description';
const String chekcTotal = 'total';

class Check {
  int id = 0;
  DateTime data =  DateTime.now();
  String title = '';
  String? description;
  int total = 0;

  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      checkId: id,
      checkData: data,
      checkTitle: title,
      checkDescripton: description,
      chekcTotal: total,
    };
    if (id != 0) {
      map[checkId] = id;
    }
    return map;
  }

  Check();

  Check.fromMap(Map<String, dynamic> map) {
    id = map[checkId] ?? 0;
    data = map[checkData] ?? DateTime.now();
    title = map[checkTitle] ?? '';
    description = map[checkDescripton];
    total = map[chekcTotal] ?? 0;
  }
}
