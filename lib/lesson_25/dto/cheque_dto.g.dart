// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cheque_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChequeDto _$ChequeDtoFromJson(Map<String, dynamic> json) => ChequeDto(
  chequeHeader: ChequeHeaderDto.fromJson(
    json['chequeHeader'] as Map<String, dynamic>,
  ),
  sumDiscount: (json['sumDiscount'] as num).toDouble(),
  chequeLines: ChequeLinesDto.fromJson(
    json['chequeLines'] as Map<String, dynamic>,
  ),
  chequeActions: ChequeActionsDto.fromJson(
    json['chequeActions'] as Map<String, dynamic>,
  ),
  chPrediction: json['chPrediction'] as String,
  sumCashback: (json['sumCashback'] as num).toInt(),
  chequeMagicName: json['chequeMagicName'] as String,
  feedbackRates: json['feedbackRates'] as List<dynamic>,
);

Map<String, dynamic> _$ChequeDtoToJson(ChequeDto instance) => <String, dynamic>{
  'chequeHeader': instance.chequeHeader.toJson(),
  'sumDiscount': instance.sumDiscount,
  'chequeLines': instance.chequeLines.toJson(),
  'chequeActions': instance.chequeActions.toJson(),
  'chPrediction': instance.chPrediction,
  'sumCashback': instance.sumCashback,
  'chequeMagicName': instance.chequeMagicName,
  'feedbackRates': instance.feedbackRates,
};
