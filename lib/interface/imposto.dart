import '../models/orcamento.dart';

abstract class IImposto {

  double calcula(Orcamento orcamento);
}