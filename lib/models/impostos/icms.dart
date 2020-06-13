import '../orcamento.dart';
import '../../interface/imposto.dart';

class ICMS implements IImposto {
  @override
  double calcula(Orcamento orcamento) {
    return orcamento.valor * 0.1;
  }
}
