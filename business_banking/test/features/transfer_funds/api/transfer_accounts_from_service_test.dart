import 'package:business_banking/features/transfer_funds/api/accounts/transfer_accounts_from_response_model.dart';
import 'package:business_banking/features/transfer_funds/api/accounts/transfer_accounts_from_service.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('TransferFundsAccountsServiceTest success', () async {
    final service = TransferFundsAccountsFromService();
    final Either<ServiceFailure, TransferFundsAccountsFromResponseModel> eitherResponse = await service.request();

    expect(eitherResponse.isRight, isTrue);
    expect(
        eitherResponse.fold((_) {}, (m) => m),
        TransferFundsAccountsFromResponseModel.fromJson({
          "fromAccounts": ["1111111111", "2222222222", "3333333333"]
        }));
  });
}
