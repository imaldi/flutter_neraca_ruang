enum DatumType {
  kabar("kabar"),
  jurnal("jurnal"),
  infografis("infografis"),
  video("video"),
  foto("foto");

  final String datumString;
  const DatumType(this.datumString);

  @override
  String toString() => datumString;
}
