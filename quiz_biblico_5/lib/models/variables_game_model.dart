class VariablesGameModel {
  final String? id;
  final String? question;
  final String? alternatives1;
  final String? alternatives1Imagem;
  final String? alternatives2;
  final String? alternatives2Imagem;
  final String? alternatives3;
  final String? alternatives3Imagem;
  final String? response1;
  final String? response2;
  final String? response3;
  bool isSelectNamber;

  VariablesGameModel({
    required this.id,
    required this.question,
    required this.alternatives1,
    required this.alternatives1Imagem,
    required this.alternatives2,
    required this.alternatives2Imagem,
    required this.alternatives3,
    required this.alternatives3Imagem,
    required this.response1,
    required this.response2,
    required this.response3,
    required this.isSelectNamber,
  });
}
