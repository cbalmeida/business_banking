import 'dart:async';
import 'package:business_banking/features/cash_accounts/bloc/cash_accounts_bloc.dart';
import 'package:business_banking/features/cash_accounts/model/cash_accounts_view_model.dart';
import 'package:business_banking/routes.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cash_accounts_screen.dart';

class CashAccountsPresenter extends Presenter<CashAccountsBloc,
    CashAccountsViewModel, CashAccountsScreen> {
  @override
  Stream<CashAccountsViewModel> getViewModelStream(CashAccountsBloc bloc) {
    return bloc.cashAccountsViewModelPipe.receive;
  }

  @override
  CashAccountsScreen buildScreen(BuildContext context, CashAccountsBloc bloc,
      CashAccountsViewModel viewModel) {
    return CashAccountsScreen(
      viewModel: viewModel,
      navigateToAccountDetail: () {

        
        _navigateToAccountDetail(context);
      },
    );
  }

  void _navigateToAccountDetail(BuildContext context) {

    context.router.push(BusinessBankingRouter.accountDetailRoute);
    //CFRouterScope.of(context).push(BusinessBankingRouter.accountDetailRoute);
  }
}
