// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_keluarga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataKeluarga _$DataKeluargaFromJson(Map<String, dynamic> json) {
  return DataKeluarga(
    bdtNama: json['bdt_nama'] as String?,
    jumlahArt: json['jumlah_art'] as String?,
    wilayahKodeFull: json['wilayah_kode_full'] as String?,
    bdtAlamat: json['bdt_alamat'] as String?,
    wilayahNamaKecamatan: json['wilayah_nama_kecamatan'] as String?,
    wilayahNamaKelurahan: json['wilayah_nama_kelurahan'] as String?,
    kk: json['kk'] as String?,
    tag: json['tag'] as bool?,
    lt: json['lt'] as String?,
    lg: json['lg'] as String?,
    verifikasi: json['verifikasi'] as String?,
  );
}

Map<String, dynamic> _$DataKeluargaToJson(DataKeluarga instance) =>
    <String, dynamic>{
      'bdt_nama': instance.bdtNama,
      'jumlah_art': instance.jumlahArt,
      'wilayah_kode_full': instance.wilayahKodeFull,
      'bdt_alamat': instance.bdtAlamat,
      'wilayah_nama_kecamatan': instance.wilayahNamaKecamatan,
      'wilayah_nama_kelurahan': instance.wilayahNamaKelurahan,
      'kk': instance.kk,
      'tag': instance.tag,
      'lt': instance.lt,
      'lg': instance.lg,
      'verifikasi': instance.verifikasi,
    };
