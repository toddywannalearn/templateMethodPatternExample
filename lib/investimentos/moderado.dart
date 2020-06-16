import '../interface/investimento.dart';
import '../models/conta.dart';
import 'dart:math';

class Moderado implements IInvestimento{
  Random random;

  Moderado(){
    random = Random();
  }

  @override
  double calcula(Conta conta) {
    if(random.nextInt(2)==0)
      return conta.saldo * 0.025;
    else return conta.saldo * 0.007;
  }

}