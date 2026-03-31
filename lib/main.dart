import 'package:flutter/material.dart';

import 'package:testapp/app/app.dart';
import 'package:testapp/core/database/cache/cashe_helper.dart';
import 'package:testapp/core/services/service_lactor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServiceLactor();
 await sl<CasheHelper>().init();
  runApp(const MyApp());
}
