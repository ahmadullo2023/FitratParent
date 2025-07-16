import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import '../../../utils/models/pagination_model.dart';
import '../model/balance_model.dart';
import '../repository/balance_repository.dart';


part 'balance_event.dart';
part 'balance_state.dart';

class BalanceBloc extends Bloc<BalanceEvent, BalanceState> {
  BalanceBloc() : super(BalanceState()) {
    on<GetBalances>((event, emit)async {
      emit(state.copyWith(status: BalanceStatus.loading));
      try {
        final result = await balanceRepository.getBalance();
        emit(state.copyWith(status: BalanceStatus.success, balances: result));
      } on DioException {
        emit(state.copyWith(status: BalanceStatus.failure));
      }
    });
  }
}
