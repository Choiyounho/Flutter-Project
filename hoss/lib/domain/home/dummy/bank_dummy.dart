import 'package:hoss/domain/home/bank_account_domain.dart';
import 'package:hoss/domain/home/bank_domain.dart';

import '../../../common/constants.dart';

final bankShinhan = Bank(
  name: '신한은행',
  logoImagePath: '$basePath/bank/bank_shinhan.png',
);
final bankKakao = Bank(
  name: '카카오뱅크',
  logoImagePath: '$basePath/bank/bank_kakao.png',
);
final bankTtoss = Bank(
  name: '토스뱅크',
  logoImagePath: '$basePath/bank/bank_toss.png',
);

final bankAccountShinhan1 = BankAccount(bank: bankShinhan, balance: 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 = BankAccount(bank: bankShinhan, balance: 30000000, accountTypeName: "저축예금");
final bankAccountShinhan3 = BankAccount(bank: bankShinhan, balance: 300000000, accountTypeName: "저축예금");
final bankAccountToss = BankAccount(bank: bankTtoss, balance: 5000000);
final bankAccountKakao = BankAccount(bank: bankKakao, balance: 7000000, accountTypeName: "입출금통장");

final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao
];

//Map
final bankMap = {
  "shinhan1": bankAccountShinhan1,
  "shinhan2": bankAccountShinhan2,
};

//Set
final bankSet = {bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan2,
  bankAccountShinhan2,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao};