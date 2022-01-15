// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Menu _$MenuFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Menu',
      json,
      ($checkedConvert) {
        final val = Menu(
          id: $checkedConvert('id', (v) => v as int),
          title: $checkedConvert('title', (v) => v as String),
          description:
              $checkedConvert('description', (v) => v as String? ?? ''),
          price: $checkedConvert('price', (v) => (v as num).toDouble()),
        );
        return val;
      },
    );
