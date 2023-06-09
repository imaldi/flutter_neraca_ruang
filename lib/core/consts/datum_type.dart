enum DatumType {
  kabar("kabar"),
  jurnal("jurnal"),
  infografis("infografis"),
  video("video");

  final String datumString;
  const DatumType(this.datumString);

  @override
  String toString() => datumString;
}
