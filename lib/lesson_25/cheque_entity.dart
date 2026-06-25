import 'package:flutter_lab/lesson_25/dto/cheque_dto.dart';

class ChequeEntity {
  final int chequeId;
  final double totalAmount;
  final List<String> items;
  final String prediction;

  ChequeEntity.fromDto(ChequeDto dto)
    : chequeId = dto.chequeHeader.chequeId,
      totalAmount = dto.chequeHeader.sumReg,
      items = dto.chequeLines.map((line) => line.lagerNameUA).toList(),
      prediction = dto.chPrediction;

  ChequeEntity({
    required this.chequeId,
    required this.totalAmount,
    required this.items,
    required this.prediction,
  });
}
