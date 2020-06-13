import '../orcamento.dart';
import '../../interface/imposto.dart';

class ISS implements IImposto {
  @override
  double calcula(Orcamento orcamento) {
    return orcamento.valor * 0.06;
  }
}
