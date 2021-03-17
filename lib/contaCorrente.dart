import 'cliente.dart';

class ContaCorrente {
  ContaCorrente(int novaAgencia, this.conta) {
    if (novaAgencia > 0) _agencia = novaAgencia;
    totalDeContaCorrente++;
  }

  static int totalDeContaCorrente = 0;

  Cliente titular;
  int _agencia = 145;
  get agencia => _agencia;
  set agencia(int novaAgencia) {
    if (novaAgencia > 0) _agencia = novaAgencia;
  }

  int conta;
  double _saldo = 20.0;
  double chequeEspecial = -100.0;

  get saldo {
    return _saldo;
  }

  set saldo(double novoSaldo) {
    if (novoSaldo >= chequeEspecial) {
      _saldo = novoSaldo;
    } else {
      print('Saldo de cheque especial inferior ao limite do cliente');
    }
  }

  bool verificaSaldo(double valor) {
    if (_saldo - valor < chequeEspecial) {
      print('Sem saldo suficiente');
      return false;
    } else {
      print('Transferência autorizado pela agência no valor de $valor.');
      return true;
    }
  }

  bool transferencia(double valorDeTransferencia, ContaCorrente contaDestino) {
    if (!verificaSaldo(valorDeTransferencia)) {
      return false;
    } else {
      _saldo -= valorDeTransferencia;
      contaDestino.deposito(valorDeTransferencia);
      return true;
    }
  }

  bool saque(double valorDoSaque) {
    if (!verificaSaldo(valorDoSaque)) {
      return false;
    } else {
      _saldo -= valorDoSaque;
      return true;
    }
  }

  double deposito(double valorDoDeposito) {
    _saldo += valorDoDeposito;
    return _saldo;
  }
}
