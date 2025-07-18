part of 'payment_bloc.dart';

@immutable
sealed class PaymentEvent {}

class PayEvent extends PaymentEvent {
  final String lid;
  final String student;
  final String amount;
  final String type;

  PayEvent(
      {required this.lid,
      required this.student,
      required this.amount,
      required this.type});
}
