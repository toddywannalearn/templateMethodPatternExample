import '../interface/investimento.dart';
import '../models/conta.dart';
import 'dart:math';

class Arrojado implements IInvestimento{
  Random random;

  Arrojado(){
    random = Random();
  }

  @override
  double calcula(Conta conta) {
    int chute = random.nextInt(10);
    if(chute >= 0 && chute <= 1)
      return conta.saldo * 0.05;
    else if(chute >= 2 && chute <= 4)
      return conta.saldo * 0.03;
    else
      return conta.saldo * 0.006;
  }
  
}