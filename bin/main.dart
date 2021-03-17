import '../lib/cliente.dart';
import '../lib/contaCorrente.dart';

void main() {
  ContaCorrente contaAmanda = ContaCorrente(145, 12285);
  ContaCorrente contaTiago = ContaCorrente(145, 13285);
  ContaCorrente contaAlexandre = ContaCorrente(145, 13286);

  print(
      'O Banco está com ${ContaCorrente.totalDeContaCorrente} contas ativas no momento!');
}
