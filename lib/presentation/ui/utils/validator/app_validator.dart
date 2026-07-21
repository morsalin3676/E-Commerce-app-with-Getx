class AppValidator {
  AppValidator._();

  static String? name(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Please enter your name";
    }
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your email";
    }

    final emailRegex =
    RegExp(r'^[^@]+@[^@]+\.[^@]+');

    if (!emailRegex.hasMatch(value)) {
      return "Enter a valid email";
    }

    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter password";
    }

    if (value.length < 8) {
      return "Password must be at least 8 characters";
    }

    return null;
  }
}