class SignInState{
  final String email;
  final String password;
  const SignInState({this.email ="", this.password = ''});

  SignInState copyWith({
    required String email, required String password
}){
    return SignInState(
      email: email, password: password
    );
  }
}