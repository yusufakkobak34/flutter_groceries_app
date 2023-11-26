import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';

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
    color = HexColor.fromHex(json['color'].toString());
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type_id'] = typeId;
    data['type_name'] = typeName;
    data['image'] = image;
    data['color'] = color?.toHex();
    return data;
  }
}
