// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cheque_lines_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChequeLinesDto _$ChequeLinesDtoFromJson(Map<String, dynamic> json) =>
    ChequeLinesDto(
      chequeLineId: (json['chequeLineId'] as num).toInt(),
      lagerId: (json['lagerId'] as num).toInt(),
      lagerNameUA: json['lagerNameUA'] as String,
      lagerUnit: json['lagerUnit'] as String,
      kolvo: (json['kolvo'] as num).toInt(),
      priceOut: (json['priceOut'] as num).toDouble(),
      unitText: json['unitText'] as String,
      fileName: json['fileName'] as String,
      sumCashbackLine: (json['sumCashbackLine'] as num).toInt(),
      additionalData: AdditionalDataDto.fromJson(
        json['additionalData'] as Map<String, dynamic>,
      ),
      like: LikeDto.fromJson(json['like'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChequeLinesDtoToJson(ChequeLinesDto instance) =>
    <String, dynamic>{
      'chequeLineId': instance.chequeLineId,
      'lagerId': instance.lagerId,
      'lagerNameUA': instance.lagerNameUA,
      'lagerUnit': instance.lagerUnit,
      'kolvo': instance.kolvo,
      'priceOut': instance.priceOut,
      'unitText': instance.unitText,
      'fileName': instance.fileName,
      'sumCashbackLine': instance.sumCashbackLine,
      'additionalData': instance.additionalData.toJson(),
      'like': instance.like.toJson(),
    };

AdditionalDataDto _$AdditionalDataDtoFromJson(Map<String, dynamic> json) =>
    AdditionalDataDto(
      id: json['id'] as String,
      title: json['title'] as String,
      icon: json['icon'] as String,
      ratio: json['ratio'] as String,
      sectionSlug: json['sectionSlug'] as String,
      companyId: json['companyId'] as String,
      externalProductId: json['externalProductId'] as String,
      slug: json['slug'] as String,
      classifierSapId: json['classifierSapId'] as String,
      brandId: json['brandId'] as String,
      brandTitle: json['brandTitle'] as String,
      weighted: json['weighted'] as bool,
      departmentName: json['departmentName'] as String,
      barcodes: (json['barcodes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      weight: (json['weight'] as num).toDouble(),
      scanExcise: json['scanExcise'] as bool,
    );

Map<String, dynamic> _$AdditionalDataDtoToJson(AdditionalDataDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'icon': instance.icon,
      'ratio': instance.ratio,
      'sectionSlug': instance.sectionSlug,
      'companyId': instance.companyId,
      'externalProductId': instance.externalProductId,
      'slug': instance.slug,
      'classifierSapId': instance.classifierSapId,
      'brandId': instance.brandId,
      'brandTitle': instance.brandTitle,
      'weighted': instance.weighted,
      'departmentName': instance.departmentName,
      'barcodes': instance.barcodes,
      'weight': instance.weight,
      'scanExcise': instance.scanExcise,
    };

LikeDto _$LikeDtoFromJson(Map<String, dynamic> json) =>
    LikeDto(contains: json['contains'] as bool);

Map<String, dynamic> _$LikeDtoToJson(LikeDto instance) => <String, dynamic>{
  'contains': instance.contains,
};
