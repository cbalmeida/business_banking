import 'package:business_banking/features/transfer_funds/api/transfer_request_model.dart';
import 'package:business_banking/features/transfer_funds/api/transfer_response_model.dart';
import 'package:business_banking/features/transfer_funds/api/transfer_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';

void main() {
  test('TransferFundsServiceTest success', () async {
    final service = TransferFundsService();
    final requestModel = new TransferFundsRequestModel(
        fromAccount: '1111111111',
        toAccount: '5555555555',
        amount: "1",
        date: DateTime.now());
    final Either<ServiceFailure, TransferFundsResponseModel> eitherResponse = await service.request(requestModel: requestModel);

    expect(eitherResponse.isRight, isTrue);
    expect(eitherResponse.fold((_) {}, (m) => m),
        TransferFundsResponseModel.fromJson({"confirmation": "123456789"}));
  });
}
