import 'models/impostos/icms.dart';
import 'models/impostos/iss.dart';
import 'models/impostos/iccc.dart';
import 'calculadorDeImposto.dart';
import 'models/orcamento.dart';
import 'interface/imposto.dart';
import 'realizadorDeInvestimento.dart';
import 'models/investimentos/conservador.dart';
import 'interface/investimento.dart';
import 'models/investimentos/moderado.dart';
import 'models/investimentos/arrojado.dart';
import 'models/conta.dart';

void main() {
  IImposto icms = ICMS();
  IImposto iss = ISS();
  IImposto iccc = ICCC();
  IInvestimento conservador = Conservador();
  IInvestimento moderado = Moderado();
  IInvestimento arrojado = Arrojado();

  var orcamento = Orcamento(500.0);
  var conta = Conta();

  conta.saldo = 100.0;

  var calculador = CalculadorDeImposto();
  var calculadorInvestimento = RealizadorDeInvestimento();

  calculador.realizaCalculo(orcamento, icms);
  calculador.realizaCalculo(orcamento, iss);
  calculador.realizaCalculo(orcamento, iccc);

  calculadorInvestimento.realizarInvestimento(conta, conservador);
  calculadorInvestimento.realizarInvestimento(conta, moderado);
  calculadorInvestimento.realizarInvestimento(conta, arrojado);
}
