import '../interface/investimento.dart';
import '../models/conta.dart';


class Conservador implements IInvestimento{

  @override
  double calcula(Conta conta) {
    return conta.saldo * 0.008;
  }

}