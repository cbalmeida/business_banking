import 'package:business_banking/features/transfer_funds/enums.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:equatable/equatable.dart';

class TransferFundsViewModel extends ViewModel {
  final String? fromAccount;
  final String? toAccount;
  final String amount;
  final DateTime? date;
  final List<String>? fromAccounts;
  final List<String>? toAccounts;
  final String? id;
  final serviceStatus;
  final dataStatus;

  TransferFundsViewModel(
      {this.fromAccount,
      this.toAccount,
      this.amount = '',
      this.date,
      this.fromAccounts,
      this.toAccounts,
      this.id,
      this.dataStatus = DataStatus.unknown,
      this.serviceStatus = ServiceStatus.unknown});

  @override
  List<Object?> get props =>
      [fromAccount, toAccount, amount, fromAccounts, toAccounts, id, date];

  // static DateTime _getLastMidnight() {
  //   final now = DateTime.now();
  //   final lastMidnight = new DateTime(now.year, now.month, now.day);
  //   return lastMidnight;
  // }
}
