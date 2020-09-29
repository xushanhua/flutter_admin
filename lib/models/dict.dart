import 'dart:convert';

class Dict {
  String code;

  String name;

  String createTime;

  String updateTime;

  String createrId;

  Dict({
    this.code,
    this.name,
    this.createTime,
    this.updateTime,
    this.createrId,
  });

  Dict copyWith({
    String code,
    String name,
    String createTime,
    String updateTime,
    String createrId,
  }) {
    return Dict(
      code: code ?? this.code,
      name: name ?? this.name,
      createTime: createTime ?? this.createTime,
      updateTime: updateTime ?? this.updateTime,
      createrId: createrId ?? this.createrId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'name': name,
      'createTime': createTime,
      'updateTime': updateTime,
      'createrId': createrId,
    };
  }

  factory Dict.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Dict(
      code: map['code'],
      name: map['name'],
      createTime: map['createTime'],
      updateTime: map['updateTime'],
      createrId: map['createrId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Dict.fromJson(String source) => Dict.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Dict(code: $code, name: $name, createTime: $createTime, updateTime: $updateTime, createrId: $createrId)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Dict &&
        o.code == code &&
        o.name == name &&
        o.createTime == createTime &&
        o.updateTime == updateTime &&
        o.createrId == createrId;
  }

  @override
  int get hashCode {
    return code.hashCode ^ name.hashCode ^ createTime.hashCode ^ updateTime.hashCode ^ createrId.hashCode;
  }
}
