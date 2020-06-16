import 'templateDeImpostoCondicional.dart';
import '../models/orcamento.dart';

class IKVC extends TemplateDeImpostoCondicional{
  @override
  bool deveUsarMaximaTaxacao(Orcamento orcamento) {
    return orcamento.valor >= 500 && orcamento.contemItemDeValorMaior(100.0);
  }

  @override
  double maximaTaxacao(Orcamento orcamento) {
    return orcamento.valor * 0.10;
  }

  @override
  double minimaTaxacao(Orcamento orcamento) {
    return orcamento.valor * 0.06;
  }

}