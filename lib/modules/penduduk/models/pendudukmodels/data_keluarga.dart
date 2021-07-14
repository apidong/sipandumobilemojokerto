import 'package:json_annotation/json_annotation.dart';

part 'data_keluarga.g.dart';

@JsonSerializable()
class DataKeluarga {
  @JsonKey(name: 'bdt_nama')
  String? bdtNama;
  @JsonKey(name: 'jumlah_art')
  String? jumlahArt;
  @JsonKey(name: 'wilayah_kode_full')
  String? wilayahKodeFull;
  @JsonKey(name: 'bdt_alamat')
  String? bdtAlamat;
  @JsonKey(name: 'wilayah_nama_kecamatan')
  String? wilayahNamaKecamatan;
  @JsonKey(name: 'wilayah_nama_kelurahan')
  String? wilayahNamaKelurahan;
  @JsonKey(name: 'kk')
  String? kk;
  @JsonKey(name: 'tag')
  bool? tag;
  @JsonKey(name: 'lt')
  String? lt;
  @JsonKey(name: 'lg')
  String? lg;
  @JsonKey(name: 'verifikasi')
  String? verifikasi;

  DataKeluarga({
    this.bdtNama,
    this.jumlahArt,
    this.wilayahKodeFull,
    this.bdtAlamat,
    this.wilayahNamaKecamatan,
    this.wilayahNamaKelurahan,
    this.kk,
    this.tag,
    this.lt,
    this.lg,
    this.verifikasi,
  });

  factory DataKeluarga.fromJson(Map<String, dynamic> json) {
    return _$DataKeluargaFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DataKeluargaToJson(this);
}
