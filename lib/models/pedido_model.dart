import 'produto_model.dart';

class PedidoModel {
  PedidoModel({
    this.id,
    this.userId,
    this.nomeUsuario,
    this.produtos,
    this.valorPedido,
    this.lat,
    this.lng,
    this.observacao,
    this.avaliacao,
  });

  String id;
  String userId;
  String nomeUsuario;
  List<ProdutoModel> produtos;
  double valorPedido;
  double lat;
  double lng;
  String observacao;
  int avaliacao;

  PedidoModel.fromJson(String docId, Map<String, dynamic> json) {
    id = docId;
    userId = json['userId'];
    final produtosList = json['produtos'] as List;
    if (produtosList != null && produtosList.isNotEmpty) {
      produtos = List.generate(produtosList.length,
          (i) => ProdutoModel.fromJson(null, produtosList[i]));
    }
    valorPedido = json['valorPedido'];
    lat = json['lat'];
    lng = json['lng'];
    observacao = json['observacao'];
    avaliacao = json['avaliacao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    if (produtos != null && produtos.isNotEmpty) {
      final produtosList = List.generate(produtos.length, (i) => produtos[i].toJson());
      data['produtos'] = produtosList;
    }
    data['valorPedido'] = this.valorPedido;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['observacao'] = this.observacao;
    data['avaliacao'] = this.avaliacao;
    return data;
  }
}