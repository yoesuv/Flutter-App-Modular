class PlaceModel {
  PlaceModel({
    this.nama,
    this.lokasi,
    this.deskripsi,
    this.thumbnail,
    this.gambar,
  });

  final String? nama;
  final String? lokasi;
  final String? deskripsi;
  final String? thumbnail;
  final String? gambar;

  factory PlaceModel.fromJson(Map<String, dynamic> json) => PlaceModel(
    nama: json["nama"],
    lokasi: json["lokasi"],
    deskripsi: json["deskripsi"],
    thumbnail: json["thumbnail"],
    gambar: json["gambar"],
  );

  Map<String, dynamic> toJson() => {
    "nama": nama,
    "lokasi": lokasi,
    "deskripsi": deskripsi,
    "thumbnail": thumbnail,
    "gambar": gambar,
  };
}