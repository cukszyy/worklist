part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  @override
  List<Object> get props => [];
}

// Notify the bloc to check if user is authenticated
class AuthenticationStarted extends AuthenticationEvent {}

// Notify the bloc that the user has successfully logged in
class AuthenticationLoggedIn extends AuthenticationEvent {}

// Notify the bloc that the user has successfully logged out
class AuthenticationLoggedOut extends AuthenticationEvent {}
