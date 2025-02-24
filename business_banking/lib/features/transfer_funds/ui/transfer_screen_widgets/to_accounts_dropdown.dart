import 'package:business_banking/features/transfer_funds/model/transfer_view_model.dart';
import 'package:flutter/material.dart';

class ToAccountsDropDown extends StatelessWidget {
  final TransferFundsViewModel viewModel;
  final Function onChangeSelectedToAccount;
  final Key key;

  ToAccountsDropDown(
      {required this.key,
      required this.viewModel,
      required this.onChangeSelectedToAccount});

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>>? _toMenuItems =
        buildDropdownMenuItems(viewModel.toAccounts);
    return DropdownButton<String>(
      key: key,
      isExpanded: true,
      items: _toMenuItems,
      onChanged: (String? value) {
        onChangeSelectedToAccount(value);
      },
      hint: Text('Select a To Account'),
      value: viewModel.toAccount,
    );
  }

  List<DropdownMenuItem<String>>? buildDropdownMenuItems(List? accounts) {
    if (accounts == null) {
      return null;
    }
    List<DropdownMenuItem<String>> items = [];
    int itemIndex = 0;
    for (String account in accounts as Iterable<String>) {
      itemIndex++;
      items.add(
        DropdownMenuItem(
          value: account,
          child: Text(account, key: Key('account_to_$itemIndex')),
        ),
      );
    }
    return items;
  }
}
