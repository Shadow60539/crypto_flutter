import 'package:crypto_flutter/injection.dart';
import 'package:crypto_flutter/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(const AppWidget());
}
