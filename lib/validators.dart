String? validateText(String? value, String input) {
  if (value == null || value.isEmpty) {
    return 'The ${input} is required';
  } else if (value.length < 5) {
    return 'The ${input} must be at least 5 characters long';
  }

  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'The email is required';
  }

  // validasi email
  String pattern = r'^[^@]+@[^@]+\.[^@]+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return 'Email address is not valid';
  }

  return null;
}

String? validateConfirmPassword(String? value, String getPassword) {
  if (value == null || value.isEmpty) {
    return 'The confirm password is required';
  }

  if (value != getPassword) {
    return 'Password do not match';
  }
  return null;
}
