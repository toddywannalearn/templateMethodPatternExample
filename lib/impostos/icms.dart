import '../interface/imposto.dart';
import '../models/orcamento.dart';

class ICMS implements IImposto {
  @override
  double calcula(Orcamento orcamento) {
    return orcamento.valor * 0.1;
  }
}
