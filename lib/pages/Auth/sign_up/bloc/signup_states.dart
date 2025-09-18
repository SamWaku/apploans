//make it immutable to prevent the class from being changed(const and final modifiers)
class SignUpStates{
  final String userName;
  final String email;
  final String password;
  final String confirmPassword;

  const SignUpStates(this.userName, this.email, this.password, this.confirmPassword);

}