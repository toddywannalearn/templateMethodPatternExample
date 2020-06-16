import 'impostos/icms.dart';
import 'impostos/iss.dart';
import 'impostos/iccc.dart';
import 'impostos/ikvc.dart';
import 'impostos/icpp.dart';
import 'impostos/ihit.dart';
import 'impostos/calculadorDeImposto.dart';
import 'models/orcamento.dart';
import 'interface/imposto.dart';
import 'investimentos/realizadorDeInvestimento.dart';
import 'investimentos/conservador.dart';
import 'interface/investimento.dart';
import 'investimentos/moderado.dart';
import 'investimentos/arrojado.dart';
import 'models/conta.dart';

void main() {
  IImposto icms = ICMS();
  IImposto iss = ISS();
  IImposto iccc = ICCC();
  IImposto ikvc = IKVC();
  IImposto icpp = ICPP();
  IImposto ihit = IHIT();

  IInvestimento conservador = Conservador();
  IInvestimento moderado = Moderado();
  IInvestimento arrojado = Arrojado();

  var orcamento = Orcamento(100.0);
  var conta = Conta();

  orcamento.adicionaItem(Item('Switch', 20));
  orcamento.adicionaItem(Item('C', 150));
  orcamento.adicionaItem(Item('A', 30));
  orcamento.adicionaItem(Item('C', 40));
  orcamento.adicionaItem(Item('C', 20));

  conta.saldo = 100.0;

  var calculador = CalculadorDeImposto();
  var calculadorInvestimento = RealizadorDeInvestimento();

    calculador.realizaCalculo(orcamento, icms);
    calculador.realizaCalculo(orcamento, iss);
    calculador.realizaCalculo(orcamento, iccc);
    calculador.realizaCalculo(orcamento, ikvc);
    calculador.realizaCalculo(orcamento, icpp);
    calculador.realizaCalculo(orcamento, ihit);


  calculadorInvestimento.realizarInvestimento(conta, conservador);
  calculadorInvestimento.realizarInvestimento(conta, moderado);
  calculadorInvestimento.realizarInvestimento(conta, arrojado);
}
