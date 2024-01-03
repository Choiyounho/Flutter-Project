import 'bank_domain.dart';

class BankAccount {
  final Bank bank;
  int balance;
  final String? accountTypeName;

  BankAccount( {
    required this.bank,
    required this.balance,
    this.accountTypeName,
  });
}

final sample = BankAccount(
  bank: Bank(name: 'd', logoImagePath: ''),
  balance: 500,
);
