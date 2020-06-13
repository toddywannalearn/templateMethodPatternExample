import 'models/orcamento.dart';
import 'interface/imposto.dart';

class CalculadorDeImposto{

  void realizaCalculo(Orcamento orcamento, IImposto impostoQualquer){
    double valor = impostoQualquer.calcula(orcamento);
    print(valor);
  }
}