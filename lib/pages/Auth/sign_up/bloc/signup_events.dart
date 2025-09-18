abstract class SignUpEvent {
  const SignUpEvent();
}

class UserNameEvent extends SignUpEvent{
  final String userName;
  const UserNameEvent(this.userName);
}

class EmailNameEvent extends SignUpEvent{
  final String email;
  const EmailNameEvent(this.email);
}

class PasswordEvent extends SignUpEvent {
  final String password;
  const PasswordEvent(this.password);
}

class ConfirmPasswordEvent extends SignUpEvent{
  final String confirmPassword;
  const ConfirmPasswordEvent(this.confirmPassword);
}