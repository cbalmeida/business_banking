import 'package:business_banking/features/customer/bloc/customer_usecase.dart';
import 'package:business_banking/features/customer/model/customer_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {


  test('CustomerUseCase initialize and create', () {
    final usecase = CustomerUseCase((viewModel) {
      expect(viewModel, isA<CustomerViewModel>());
    });
    usecase.create();
  });

  test('CustomerUseCase initialize and recreate', () {
    final usecase = CustomerUseCase((viewModel) {
      expect(viewModel, isA<CustomerViewModel>());
    });
    usecase.create();
    usecase.create(); //use to trigger else in the create
  });
}
