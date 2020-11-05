class UsuarioModel {
  String id;
  String nome;
  String email;
  String tipo;

  UsuarioModel({
    this.id,
    this.nome,
    this.email,
    this.tipo,
  });

  UsuarioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    email = json['email'];
    tipo = json['tipo'];
  }
}
