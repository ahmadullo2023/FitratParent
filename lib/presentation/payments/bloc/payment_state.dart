part of 'payment_bloc.dart';

class PaymentState {
  final PaymentStatus status;
  final int? order_id;
  final String? payment_url;

  PaymentState({
    this.status = PaymentStatus.loading,
    this.order_id,
    this.payment_url,
  });

  PaymentState copyWith({
    PaymentStatus? status,
    int? order_id,
    String? payment_url,
  }) {
    return PaymentState(
      status: status ?? this.status,
      order_id: order_id ?? this.order_id,
      payment_url: payment_url ?? this.payment_url,
    );
  }
}

enum PaymentStatus { success, loading, error }

enum LearningStatus { success, loading, error }
