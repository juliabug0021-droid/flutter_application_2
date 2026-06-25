import 'package:flutter_lab/lesson_25/dto/cheque_actions_dto.dart';
import 'package:flutter_lab/lesson_25/dto/cheque_header_dto.dart';
import 'package:flutter_lab/lesson_25/dto/cheque_lines_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cheque_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ChequeDto {
  final ChequeHeaderDto chequeHeader;
  final double sumDiscount;
  final List<ChequeLinesDto> chequeLines;
  final ChequeActionsDto chequeActions;
  final String chPrediction;
  final int sumCashback;
  final String chequeMagicName;
  final List<dynamic> feedbackRates;

  ChequeDto({
    required this.chequeHeader,
    required this.sumDiscount,
    required this.chequeLines,
    required this.chequeActions,
    required this.chPrediction,
    required this.sumCashback,
    required this.chequeMagicName,
    required this.feedbackRates,
  });

  factory ChequeDto.fromJson(Map<String, dynamic> json) =>
      _$ChequeDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ChequeDtoToJson(this);
}
