import 'package:badminton_accessories_shop/blocs/base_cubit.dart';
import 'package:badminton_accessories_shop/blocs/base_state.dart';

mixin CubitMixin<T> on BaseCubit<BaseState<T>> {
  Future<void> cubitHandler(Future<T> emitState) async {
    safeEmit(state.copyWith(status: StateStatus.loading));

    try {
      safeEmit(
        state.copyWith(newValue: await emitState, status: StateStatus.success),
      );
    } catch (error) {
      safeEmit(
        state.copyWith(status: StateStatus.error, message: error.toString()),
      );
    }
  }
}

mixin ListCubitMixin<T extends List> on BaseCubit<BaseState<T>> {
  Future<void> cubitHandler(
    Future<T> emitState, {
    bool addToPrevState = false,
  }) async {
    safeEmit(state.copyWith(status: StateStatus.loading));

    final T newState = await emitState;
    T stateToEmit = state.value;

    if (addToPrevState) {
      stateToEmit.addAll(newState);
    } else {
      stateToEmit = newState;
    }

    try {
      safeEmit(
        state.copyWith(newValue: stateToEmit, status: StateStatus.success),
      );
    } catch (error) {
      safeEmit(
        state.copyWith(status: StateStatus.error, message: error.toString()),
      );
    }
  }
}
