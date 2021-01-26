class ForceUpdateModel {
  bool isForceUpdate;
  String type;
  String currentVersion;

  ForceUpdateModel({this.isForceUpdate, this.type, this.currentVersion});

  ForceUpdateModel.fromJson(Map<String, dynamic> json) {
    isForceUpdate = json['isForceUpdate'];
    type = json['type'];
    currentVersion = json['currentVersion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isForceUpdate'] = this.isForceUpdate;
    data['type'] = this.type;
    data['currentVersion'] = this.currentVersion;
    return data;
  }
}
