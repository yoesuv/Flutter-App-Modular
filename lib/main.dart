import 'package:flutter/material.dart';
import 'package:flutter_app_modular/src/app.dart';
import 'package:flutter_app_modular/src/feature/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(module: HomeModule(), child: const MyApp()));
}