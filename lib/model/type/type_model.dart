import 'package:flutter/material.dart';

class TypeModel {
  int? typeId;
  String? typeName;
  String? image;
  Color? color;

  TypeModel({
    this.typeId,
    this.typeName,
    this.image,
    this.color,
  });

  TypeModel.fromJson(Map<String, dynamic> json) {
    typeId = json['type_id'];
    typeName = json['type_name'];
    image = json['image'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type_id'] = typeId;
    data['type_name'] = typeName;
    data['image'] = image;
    data['color'] = color;
    return data;
  }
}
