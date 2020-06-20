part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

// App started and user is not authenticated
class AuthenticationInitial extends AuthenticationState {}

// User authentication is successful
class AuthenticationSuccess extends AuthenticationState {
  final String displayName;
  const AuthenticationSuccess(this.displayName);

  // Needed for Equatable to compare different instances of AuthenticationState
  @override
  List<Object> get props => [displayName];

  @override
  String toString() => 'AuthenticationSuccess { displayName: $displayName }';
}

// User authentication fails
class AuthenticationFailure extends AuthenticationState {}
