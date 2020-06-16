import 'interface/imposto.dart';
import 'models/orcamento.dart';

abstract class TemplateDeImpostoCondicional implements IImposto{
  @override
  double calcula(Orcamento orcamento) {
    if(deveUsarMaximaTaxacao(orcamento))
      return maximaTaxacao(orcamento);
    else return minimaTaxacao(orcamento);
  }

  double minimaTaxacao(Orcamento orcamento);

  double maximaTaxacao(Orcamento orcamento);

  bool deveUsarMaximaTaxacao(Orcamento orcamento);

}