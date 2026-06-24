import 'dart:convert';

import 'package:flutter/services.dart';

void main() async {
  final jsonCheque = await rootBundle.loadString(
    'assets/json/silpo_cheque_example.json',
  );

  final chequeMap = jsonDecode(jsonCheque) as Map<String, dynamic>;
}
