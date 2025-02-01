import 'package:flutter/material.dart';

import 'main_app.dart';
import 'tools/logger.dart';

void main() {
  initLogger();
  logger.info('Start main');

  runApp(const MainApp());
}
