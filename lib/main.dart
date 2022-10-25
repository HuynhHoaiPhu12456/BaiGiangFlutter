import 'package:app_phone/EVN_login.dart';
import 'package:app_phone/EVN_register.dart';
import 'package:app_phone/PhuProfile.dart';
import 'package:app_phone/lophocphan_page.dart';
import 'package:app_phone/productlist_page.dart';
import 'package:app_phone/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ProductProvider())],
    child: MaterialApp(
      home: ProductListPage(),
    ),
  ));
}
