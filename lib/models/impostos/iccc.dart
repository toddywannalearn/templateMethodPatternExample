import '../orcamento.dart';
import '../../interface/imposto.dart';

class ICCC implements IImposto{
  @override
  double calcula(Orcamento orcamento) {
    if(orcamento.valor < 1000){
      return orcamento.valor * 0.05;
    }else if(orcamento.valor <= 3000){
      return orcamento.valor * 0.07;
    }else{
      return orcamento.valor * 0.08 + 30;
    }
  }

}