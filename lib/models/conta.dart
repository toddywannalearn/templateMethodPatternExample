
class Conta{
  double _saldo;

  void deposita(double valor){
    _saldo += valor;
  }

  double get saldo => _saldo;

  set saldo(double value) {
    _saldo = value;
  }
}