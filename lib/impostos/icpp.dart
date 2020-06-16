import 'templateDeImpostoCondicional.dart';
import '../models/orcamento.dart';

class ICPP extends TemplateDeImpostoCondicional{
  @override
  bool deveUsarMaximaTaxacao(Orcamento orcamento) {
    return orcamento.valor >= 500.0;
  }

  @override
  double maximaTaxacao(Orcamento orcamento) {
    return orcamento.valor * 0.07;
  }

  @override
  double minimaTaxacao(Orcamento orcamento) {
    return orcamento.valor * 0.05;
  }

}