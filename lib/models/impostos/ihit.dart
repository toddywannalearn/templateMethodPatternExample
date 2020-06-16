import '../../templateDeImpostoCondicional.dart';
import '../orcamento.dart';

class IHIT extends TemplateDeImpostoCondicional{
  @override
  bool deveUsarMaximaTaxacao(Orcamento orcamento) {
    for(Item item in orcamento.itens){
      if(orcamento.itens.where((element) => element.nome == item.nome).length >= 2)
        return true;
    }
    return false;
  }

  @override
  double maximaTaxacao(Orcamento orcamento) {
    return orcamento.valor * 0.13 + 100.0;
  }

  @override
  double minimaTaxacao(Orcamento orcamento) {
    return orcamento.valor * (0.01 * orcamento.itens.length);
  }
  
}