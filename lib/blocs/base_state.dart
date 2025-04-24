enum StateStatus { initial, loading, success, error }

class BaseState<T> {
  BaseState({
    required this.value,
    this.status = StateStatus.initial,
    this.message = '',
  });

  T value;
  StateStatus status;
  String? message;

  BaseState<T> copyWith({T? newValue, StateStatus? status, String? message}) {
    return BaseState(
      value: newValue ?? this.value,
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }
}
