// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentHistoryModel _$PaymentHistoryModelFromJson(Map<String, dynamic> json) {
  return _PaymentHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentHistoryModel {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<ResultsModel>? get results => throw _privateConstructorUsedError;

  /// Serializes this PaymentHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentHistoryModelCopyWith<PaymentHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentHistoryModelCopyWith<$Res> {
  factory $PaymentHistoryModelCopyWith(
          PaymentHistoryModel value, $Res Function(PaymentHistoryModel) then) =
      _$PaymentHistoryModelCopyWithImpl<$Res, PaymentHistoryModel>;
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<ResultsModel>? results});
}

/// @nodoc
class _$PaymentHistoryModelCopyWithImpl<$Res, $Val extends PaymentHistoryModel>
    implements $PaymentHistoryModelCopyWith<$Res> {
  _$PaymentHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentHistoryModelImplCopyWith<$Res>
    implements $PaymentHistoryModelCopyWith<$Res> {
  factory _$$PaymentHistoryModelImplCopyWith(_$PaymentHistoryModelImpl value,
          $Res Function(_$PaymentHistoryModelImpl) then) =
      __$$PaymentHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<ResultsModel>? results});
}

/// @nodoc
class __$$PaymentHistoryModelImplCopyWithImpl<$Res>
    extends _$PaymentHistoryModelCopyWithImpl<$Res, _$PaymentHistoryModelImpl>
    implements _$$PaymentHistoryModelImplCopyWith<$Res> {
  __$$PaymentHistoryModelImplCopyWithImpl(_$PaymentHistoryModelImpl _value,
      $Res Function(_$PaymentHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$PaymentHistoryModelImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$PaymentHistoryModelImpl implements _PaymentHistoryModel {
  const _$PaymentHistoryModelImpl(
      {this.count, this.next, this.previous, final List<ResultsModel>? results})
      : _results = results;

  factory _$PaymentHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentHistoryModelImplFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<ResultsModel>? _results;
  @override
  List<ResultsModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaymentHistoryModel(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentHistoryModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of PaymentHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentHistoryModelImplCopyWith<_$PaymentHistoryModelImpl> get copyWith =>
      __$$PaymentHistoryModelImplCopyWithImpl<_$PaymentHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentHistoryModel implements PaymentHistoryModel {
  const factory _PaymentHistoryModel(
      {final int? count,
      final String? next,
      final String? previous,
      final List<ResultsModel>? results}) = _$PaymentHistoryModelImpl;

  factory _PaymentHistoryModel.fromJson(Map<String, dynamic> json) =
      _$PaymentHistoryModelImpl.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<ResultsModel>? get results;

  /// Create a copy of PaymentHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentHistoryModelImplCopyWith<_$PaymentHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultsModel _$ResultsModelFromJson(Map<String, dynamic> json) {
  return _ResultsModel.fromJson(json);
}

/// @nodoc
mixin _$ResultsModel {
  String? get id => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  String? get casher => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  KindModel? get kind => throw _privateConstructorUsedError;
  String? get payment_method => throw _privateConstructorUsedError;
  String? get lid => throw _privateConstructorUsedError;
  String? get attendance => throw _privateConstructorUsedError;
  String? get stuff => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  double? get balance => throw _privateConstructorUsedError;

  /// Serializes this ResultsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultsModelCopyWith<ResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsModelCopyWith<$Res> {
  factory $ResultsModelCopyWith(
          ResultsModel value, $Res Function(ResultsModel) then) =
      _$ResultsModelCopyWithImpl<$Res, ResultsModel>;
  @useResult
  $Res call(
      {String? id,
      String? action,
      String? casher,
      double? amount,
      KindModel? kind,
      String? payment_method,
      String? lid,
      String? attendance,
      String? stuff,
      String? comment,
      String? created_at,
      String? updated_at,
      double? total,
      double? balance});

  $KindModelCopyWith<$Res>? get kind;
}

/// @nodoc
class _$ResultsModelCopyWithImpl<$Res, $Val extends ResultsModel>
    implements $ResultsModelCopyWith<$Res> {
  _$ResultsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? action = freezed,
    Object? casher = freezed,
    Object? amount = freezed,
    Object? kind = freezed,
    Object? payment_method = freezed,
    Object? lid = freezed,
    Object? attendance = freezed,
    Object? stuff = freezed,
    Object? comment = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? total = freezed,
    Object? balance = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      casher: freezed == casher
          ? _value.casher
          : casher // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as KindModel?,
      payment_method: freezed == payment_method
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as String?,
      lid: freezed == lid
          ? _value.lid
          : lid // ignore: cast_nullable_to_non_nullable
              as String?,
      attendance: freezed == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as String?,
      stuff: freezed == stuff
          ? _value.stuff
          : stuff // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KindModelCopyWith<$Res>? get kind {
    if (_value.kind == null) {
      return null;
    }

    return $KindModelCopyWith<$Res>(_value.kind!, (value) {
      return _then(_value.copyWith(kind: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultsModelImplCopyWith<$Res>
    implements $ResultsModelCopyWith<$Res> {
  factory _$$ResultsModelImplCopyWith(
          _$ResultsModelImpl value, $Res Function(_$ResultsModelImpl) then) =
      __$$ResultsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? action,
      String? casher,
      double? amount,
      KindModel? kind,
      String? payment_method,
      String? lid,
      String? attendance,
      String? stuff,
      String? comment,
      String? created_at,
      String? updated_at,
      double? total,
      double? balance});

  @override
  $KindModelCopyWith<$Res>? get kind;
}

/// @nodoc
class __$$ResultsModelImplCopyWithImpl<$Res>
    extends _$ResultsModelCopyWithImpl<$Res, _$ResultsModelImpl>
    implements _$$ResultsModelImplCopyWith<$Res> {
  __$$ResultsModelImplCopyWithImpl(
      _$ResultsModelImpl _value, $Res Function(_$ResultsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? action = freezed,
    Object? casher = freezed,
    Object? amount = freezed,
    Object? kind = freezed,
    Object? payment_method = freezed,
    Object? lid = freezed,
    Object? attendance = freezed,
    Object? stuff = freezed,
    Object? comment = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? total = freezed,
    Object? balance = freezed,
  }) {
    return _then(_$ResultsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      casher: freezed == casher
          ? _value.casher
          : casher // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as KindModel?,
      payment_method: freezed == payment_method
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as String?,
      lid: freezed == lid
          ? _value.lid
          : lid // ignore: cast_nullable_to_non_nullable
              as String?,
      attendance: freezed == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as String?,
      stuff: freezed == stuff
          ? _value.stuff
          : stuff // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ResultsModelImpl implements _ResultsModel {
  const _$ResultsModelImpl(
      {this.id,
      this.action,
      this.casher,
      this.amount,
      this.kind,
      this.payment_method,
      this.lid,
      this.attendance,
      this.stuff,
      this.comment,
      this.created_at,
      this.updated_at,
      this.total,
      this.balance});

  factory _$ResultsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? action;
  @override
  final String? casher;
  @override
  final double? amount;
  @override
  final KindModel? kind;
  @override
  final String? payment_method;
  @override
  final String? lid;
  @override
  final String? attendance;
  @override
  final String? stuff;
  @override
  final String? comment;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final double? total;
  @override
  final double? balance;

  @override
  String toString() {
    return 'ResultsModel(id: $id, action: $action, casher: $casher, amount: $amount, kind: $kind, payment_method: $payment_method, lid: $lid, attendance: $attendance, stuff: $stuff, comment: $comment, created_at: $created_at, updated_at: $updated_at, total: $total, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.casher, casher) || other.casher == casher) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.payment_method, payment_method) ||
                other.payment_method == payment_method) &&
            (identical(other.lid, lid) || other.lid == lid) &&
            (identical(other.attendance, attendance) ||
                other.attendance == attendance) &&
            (identical(other.stuff, stuff) || other.stuff == stuff) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      action,
      casher,
      amount,
      kind,
      payment_method,
      lid,
      attendance,
      stuff,
      comment,
      created_at,
      updated_at,
      total,
      balance);

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsModelImplCopyWith<_$ResultsModelImpl> get copyWith =>
      __$$ResultsModelImplCopyWithImpl<_$ResultsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsModelImplToJson(
      this,
    );
  }
}

abstract class _ResultsModel implements ResultsModel {
  const factory _ResultsModel(
      {final String? id,
      final String? action,
      final String? casher,
      final double? amount,
      final KindModel? kind,
      final String? payment_method,
      final String? lid,
      final String? attendance,
      final String? stuff,
      final String? comment,
      final String? created_at,
      final String? updated_at,
      final double? total,
      final double? balance}) = _$ResultsModelImpl;

  factory _ResultsModel.fromJson(Map<String, dynamic> json) =
      _$ResultsModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get action;
  @override
  String? get casher;
  @override
  double? get amount;
  @override
  KindModel? get kind;
  @override
  String? get payment_method;
  @override
  String? get lid;
  @override
  String? get attendance;
  @override
  String? get stuff;
  @override
  String? get comment;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  double? get total;
  @override
  double? get balance;

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultsModelImplCopyWith<_$ResultsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KindModel _$KindModelFromJson(Map<String, dynamic> json) {
  return _KindModel.fromJson(json);
}

/// @nodoc
mixin _$KindModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;

  /// Serializes this KindModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KindModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KindModelCopyWith<KindModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KindModelCopyWith<$Res> {
  factory $KindModelCopyWith(KindModel value, $Res Function(KindModel) then) =
      _$KindModelCopyWithImpl<$Res, KindModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? action,
      String? color,
      String? created_at});
}

/// @nodoc
class _$KindModelCopyWithImpl<$Res, $Val extends KindModel>
    implements $KindModelCopyWith<$Res> {
  _$KindModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KindModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? action = freezed,
    Object? color = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KindModelImplCopyWith<$Res>
    implements $KindModelCopyWith<$Res> {
  factory _$$KindModelImplCopyWith(
          _$KindModelImpl value, $Res Function(_$KindModelImpl) then) =
      __$$KindModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? action,
      String? color,
      String? created_at});
}

/// @nodoc
class __$$KindModelImplCopyWithImpl<$Res>
    extends _$KindModelCopyWithImpl<$Res, _$KindModelImpl>
    implements _$$KindModelImplCopyWith<$Res> {
  __$$KindModelImplCopyWithImpl(
      _$KindModelImpl _value, $Res Function(_$KindModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of KindModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? action = freezed,
    Object? color = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_$KindModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$KindModelImpl implements _KindModel {
  const _$KindModelImpl(
      {this.id, this.name, this.action, this.color, this.created_at});

  factory _$KindModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KindModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? action;
  @override
  final String? color;
  @override
  final String? created_at;

  @override
  String toString() {
    return 'KindModel(id: $id, name: $name, action: $action, color: $color, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KindModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, action, color, created_at);

  /// Create a copy of KindModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KindModelImplCopyWith<_$KindModelImpl> get copyWith =>
      __$$KindModelImplCopyWithImpl<_$KindModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KindModelImplToJson(
      this,
    );
  }
}

abstract class _KindModel implements KindModel {
  const factory _KindModel(
      {final String? id,
      final String? name,
      final String? action,
      final String? color,
      final String? created_at}) = _$KindModelImpl;

  factory _KindModel.fromJson(Map<String, dynamic> json) =
      _$KindModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get action;
  @override
  String? get color;
  @override
  String? get created_at;

  /// Create a copy of KindModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KindModelImplCopyWith<_$KindModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
