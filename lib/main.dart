import 'package:bloc/bloc.dart';
import 'package:coffee_shoping/app.dart';
import 'package:coffee_shoping/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';

void main() async {
  final conn = PostgreSQLConnection('172.17.0.2', 5432, 'postgres',
      username: 'postgres', password: 'johnzdictator');
  await conn.open();
  BlocOverrides.runZoned(
    () => runApp(const CoffeeShoppingApp()),
    blocObserver: CoffeeShoppingBlocObserver(),
  );
}
