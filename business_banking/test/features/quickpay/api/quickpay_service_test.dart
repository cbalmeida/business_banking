import 'package:business_banking/features/quickpay/api/quickpay_service.dart';
import 'package:business_banking/features/quickpay/api/quickpay_service_response_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';

void main() {
  test('QuickPayService success', () async {
    final service = QuickPayService();
    final Either<ServiceFailure, QuickPayServiceResponseModel> eitherResponse = await service.request();

    expect(eitherResponse.isRight, isTrue);
    expect(
        eitherResponse.fold((_) {}, (m) => m),
        QuickPayServiceResponseModel.fromJson(
            {'name': 'user name', 'email': 'username@gmail.com', 'imageUrl': ''}));
  });
}