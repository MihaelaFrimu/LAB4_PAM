import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:lab4pam/domain/entities/drink.dart';
import 'package:lab4pam/domain/repositories/drink_repository.dart';
import 'package:lab4pam/data/models/drink_model.dart';

class DrinkRepositoryImpl implements DrinkRepository {
  @override
  Future<List<Drink>> getDrinks() async {
    final String response =
    await rootBundle.loadString('assets/drinks_data.json');
    final List<dynamic> data = json.decode(response)['drinks'];
    return data.map((drinkData) => DrinkModel.fromJson(drinkData)).toList();
  }
}
