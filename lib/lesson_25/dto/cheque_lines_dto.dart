import 'package:json_annotation/json_annotation.dart';
part 'cheque_lines_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ChequeLinesDto {
  final int chequeLineId;
  final int lagerId;
  final String lagerNameUA;
  final String lagerUnit;
  final int kolvo;
  final double priceOut;
  final String unitText;
  final String fileName;
  final int sumCashbackLine;
  final AdditionalDataDto additionalData;
  final LikeDto like;

  ChequeLinesDto({
    required this.chequeLineId,
    required this.lagerId,
    required this.lagerNameUA,
    required this.lagerUnit,
    required this.kolvo,
    required this.priceOut,
    required this.unitText,
    required this.fileName,
    required this.sumCashbackLine,
    required this.additionalData,
    required this.like,
  });

  factory ChequeLinesDto.fromJson(Map<String, dynamic> json) =>
      _$ChequeLinesDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ChequeLinesDtoToJson(this);
}

@JsonSerializable()
class AdditionalDataDto {
  final String id;
  final String title;
  final String icon;
  final String ratio;
  final String sectionSlug;
  final String companyId;
  final String externalProductId;
  final String slug;
  final String classifierSapId;
  final String brandId;
  final String brandTitle;
  final bool weighted;
  final String departmentName;
  final List<String> barcodes;
  final double weight;
  final bool scanExcise;

  AdditionalDataDto({
    required this.id,
    required this.title,
    required this.icon,
    required this.ratio,
    required this.sectionSlug,
    required this.companyId,
    required this.externalProductId,
    required this.slug,
    required this.classifierSapId,
    required this.brandId,
    required this.brandTitle,
    required this.weighted,
    required this.departmentName,
    required this.barcodes,
    required this.weight,
    required this.scanExcise,
  });
  factory AdditionalDataDto.fromJson(Map<String, dynamic> json) =>
      _$AdditionalDataDtoFromJson(json);
  Map<String, dynamic> toJson() => _$AdditionalDataDtoToJson(this);
}

@JsonSerializable()
class LikeDto {
  final bool contains;

  LikeDto({required this.contains});
  factory LikeDto.fromJson(Map<String, dynamic> json) =>
      _$LikeDtoFromJson(json);
  Map<String, dynamic> toJson() => _$LikeDtoToJson(this);
}
