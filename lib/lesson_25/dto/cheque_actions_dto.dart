import 'package:json_annotation/json_annotation.dart';
part 'cheque_actions_dto.g.dart';

@JsonSerializable()
class ChequeActionsDto {
  final int actionType;
  final String? actionTypeCodeName;
  final int actionId;
  final int discpercent;
  final double discount;
  final String? varcharData;

  ChequeActionsDto({
    required this.actionType,
    required this.actionTypeCodeName,
    required this.actionId,
    required this.discpercent,
    required this.discount,
    required this.varcharData,
  });
  factory ChequeActionsDto.fromJson(Map<String, dynamic> json) =>
      _$ChequeActionsDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ChequeActionsDtoToJson(this);
}
