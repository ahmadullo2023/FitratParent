import 'package:dio/dio.dart';
import 'package:fitrat_parent2/presentation/payments/model/payment_history_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../repository/repository.dart';

part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(PaymentState()) {

    on<PayEvent>((event, emit) async {
      emit(state.copyWith(status: PaymentStatus.loading));
      try {
        final result = await paymentRepository.payment(
            lid: event.lid,
            student: event.student,
            amount: event.amount,
            type: event.type);

        emit(state.copyWith(
          status: PaymentStatus.success,
          order_id: result.order_id,
          payment_url: result.payment_url,
        ));
      } on DioException catch (e) {
        emit(state.copyWith(status: PaymentStatus.error));
      } catch (e) {
        emit(state.copyWith(status: PaymentStatus.error));
      }
    });


    on<PaymentHistoryEvent>((event, emit) async {
      emit(state.copyWith(status: PaymentStatus.loading));
      try {
        final result = await paymentRepository.paymentHistory();

        emit(state.copyWith(
          status: PaymentStatus.success,
          paymentHistoryModel: result,
        ));
      } on DioException catch (e) {
        emit(state.copyWith(status: PaymentStatus.error));
      } catch (e) {
        emit(state.copyWith(status: PaymentStatus.error));
      }
    });




  }
}

enum StudentStatus { loading, success, error }

enum CoursesStatus { loading, success, error }
