import 'package:flutter/material.dart';

class DataModel {
  String? text;
  IconData? icon;

  DataModel({
    this.text,
    this.icon,
  });

  DataModel copyWith({String? text, IconData? icon}) => DataModel(
        text: text ?? this.text,
        icon: icon ?? this.icon,
      );
}
