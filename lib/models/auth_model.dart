import 'package:equatable/equatable.dart';

class Auth extends Equatable {
  const Auth({this.isLoggedIn = false, this.userId = ''});

  final bool isLoggedIn;
  final String userId;

  Auth copyWith({bool? isLoggedIn, String? userId}) {
    return Auth(
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      userId: userId ?? this.userId,
    );
  }

  @override
  List<Object?> get props => [isLoggedIn, userId];
}
