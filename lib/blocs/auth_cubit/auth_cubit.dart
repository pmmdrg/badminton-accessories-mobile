import 'package:badminton_accessories_shop/blocs/base_cubit.dart';
import 'package:badminton_accessories_shop/blocs/base_state.dart';
import 'package:badminton_accessories_shop/models/auth_model.dart';
import 'package:badminton_accessories_shop/repositories/auth_repo/auth_repo.dart';
import 'package:badminton_accessories_shop/utils/mixins/cubit_mixin.dart';

class AuthCubit extends BaseCubit<BaseState<Auth>> with CubitMixin<Auth> {
  AuthCubit()
    : super(BaseState(value: const Auth(), status: StateStatus.initial));

  static final AuthRepo _authRepo = AuthRepo();
}
