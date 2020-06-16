class Orcamento {
  double _valor;
  List<Item> _itens;

  Orcamento(double valor) {
    this._valor = valor;
    this._itens = List<Item>();
  }

  List<Item> get itens => _itens;

  double get valor => _valor;

  void adicionaItem(Item item) {
    _itens.add(item);
  }

  bool contemItemDeNome(String nomeItem) {
    for (Item item in _itens) {
      if (item.nome == nomeItem) return true;
    }
    return false;
  }

  bool contemItemDeValorMaior(double valor){
    for(Item item in _itens){
      if(item.valor > valor)
        return true;
    }
    return false;
  }
}

class Item {
  String _nome;
  double _valor;

  Item(this._nome, this._valor);

  double get valor => _valor;

  String get nome => _nome;
}