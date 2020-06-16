import '../models/conta.dart';
import '../interface/investimento.dart';

class RealizadorDeInvestimento{
  void realizarInvestimento(Conta conta, IInvestimento investimento){
    double valor = investimento.calcula(conta);

    conta.deposita(valor * 0.75);
    print('Saldo: ${conta.saldo}');
  }
}