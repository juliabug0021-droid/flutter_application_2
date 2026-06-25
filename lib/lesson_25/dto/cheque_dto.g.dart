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
  chequeLines: (json['chequeLines'] as List<dynamic>)
      .map((e) => ChequeLinesDto.fromJson(e as Map<String, dynamic>))
      .toList(),
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
  'chequeLines': instance.chequeLines.map((e) => e.toJson()).toList(),
  'chequeActions': instance.chequeActions.toJson(),
  'chPrediction': instance.chPrediction,
  'sumCashback': instance.sumCashback,
  'chequeMagicName': instance.chequeMagicName,
  'feedbackRates': instance.feedbackRates,
};
