import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zen_habits_app/model/services/auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  AuthService auth = AuthService.instance;

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      emit(AuthLoading());
      await auth.signIn(email: email, password: password);
      emit(AuthSuccess());
    }  on FirebaseAuthException catch (e) {
      emit(AuthFailure(_messageFor(e.code)));
    }
  }

  Future<void> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      emit(AuthLoading());
      await auth.signUp(email: email, password: password, name: name);
      emit(AuthSuccess());
    }  on FirebaseAuthException catch (e) {
  emit(AuthFailure(_messageFor(e.code)));
  }
  }

  String _messageFor(String code) {
    switch (code) {
      case 'invalid-email':
        return 'Invalid email address.';
      case 'user-not-found':
      case 'wrong-password':
      case 'invalid-credential':
        return 'Incorrect email or password.';
      case 'email-already-in-use':
        return 'This email is already registered.';
      case 'weak-password':
        return 'Password must be at least 6 characters.';
      case 'network-request-failed':
        return 'No internet connection.';
      case 'too-many-requests':
        return 'Too many attempts. Try again later.';
      default:
        return 'Something went wrong.';
    }
  }
}
