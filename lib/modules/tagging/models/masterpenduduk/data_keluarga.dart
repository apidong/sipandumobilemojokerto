import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_keluarga.g.dart';

@JsonSerializable()
class DataKeluarga extends Equatable {
  @JsonKey(name: 'bdt_nama')
  final String? bdtNama;
  @JsonKey(name: 'jumlah_art')
  final String? jumlahArt;
  @JsonKey(name: 'wilayah_kode_full')
  final String? wilayahKodeFull;
  @JsonKey(name: 'bdt_alamat')
  final String? bdtAlamat;
  @JsonKey(name: 'wilayah_nama_kecamatan')
  final String? wilayahNamaKecamatan;
  @JsonKey(name: 'wilayah_nama_kelurahan')
  final String? wilayahNamaKelurahan;
  @JsonKey(name: 'kk')
  final String? kk;
  @JsonKey(name: 'tag')
  final bool? tag;
  @JsonKey(name: 'lt')
  final String? lt;
  @JsonKey(name: 'lg')
  final String? lg;
  @JsonKey(name: 'verifikasi')
  final String? verifikasi;

  const DataKeluarga({
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

  @override
  List<Object?> get props {
    return [
      bdtNama,
      jumlahArt,
      wilayahKodeFull,
      bdtAlamat,
      wilayahNamaKecamatan,
      wilayahNamaKelurahan,
      kk,
      tag,
      lt,
      lg,
      verifikasi,
    ];
  }
}
