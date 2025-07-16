part of 'balance_bloc.dart';

class BalanceState {
  final PaginationModel<BalanceModel>? balances;
  final BalanceStatus status;

  BalanceState({this.balances, this.status = BalanceStatus.loading});

  BalanceState copyWith ({
    PaginationModel<BalanceModel>? balances,
    BalanceStatus? status
}) {
    return BalanceState(
      balances: balances ?? this.balances,
      status: status ?? this.status
    );
  }
}


enum BalanceStatus { success, failure, loading}
