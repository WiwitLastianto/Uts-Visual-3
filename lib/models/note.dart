class Note {
  int _id;
  String _title;
  String _date;
  String _telepon;
  String _tanggal;
  String _alamat;
  String _email;
  String _description;
  int _priority;
  Note(this._title, this._date, this._priority,this._description,this._telepon,this._tanggal,this._alamat,[this._email]);
  Note.withId(this._id, this._title, this._date,this._priority,this._description,this._telepon,this._tanggal,this._alamat,[this._email]);
  int get id => _id;
  String get title => _title;
  String get description => _description;
  String get telepon => _telepon;
  String get tanggal => _tanggal;
  String get alamat => _alamat;
  String get email => _email;
  int get priority => _priority;
  String get date => _date;
  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      this._description = newDescription;
    }
  }
  set telepon(String newtelepon) {
    if (newtelepon.length <= 255) {
      this._telepon = newtelepon;
    }
  }
  set tanggal(String newtanggal) {
    if (newtanggal.length <= 255) {
      this._tanggal = newtanggal;
    }
  }
  set alamat(String newalamat) {
    if (newalamat.length <= 255) {
      this._alamat = newalamat;
    }
  }
set email(String newemail) {
    if (newemail.length <= 255) {
      this._email = newemail;
    }
  }
  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  // Convert a Note object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['telepon'] = _telepon;
    map['tanggal'] = _tanggal;
    map['alamat'] = _alamat;
    map['email'] = _email;
    map['priority'] = _priority;
    map['date'] = _date;
    return map;
  }

  // Extract a Note object from a Map object
  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._telepon = map['telepon'];
    this._tanggal = map['tanggal'];
    this._alamat = map['alamat'];
    this._email = map['email'];
    this._priority = map['priority'];
    this._date = map['date'];
  }
}
