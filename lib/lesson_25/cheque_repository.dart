import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_lab/lesson_25/cheque_entity.dart';
import 'package:flutter_lab/lesson_25/dto/cheque_dto.dart';

class ChequeRepository {
  Future<ChequeEntity> fetchCheque() async {
    final jsonCheque = await rootBundle.loadString(
      'assets/json/silpo_cheque_example.json',
    );
    final chequeMap = jsonDecode(jsonCheque) as Map<String, dynamic>;
    final cheque = ChequeDto.fromJson(chequeMap);
    return ChequeEntity.fromDto(cheque);
  }
}
