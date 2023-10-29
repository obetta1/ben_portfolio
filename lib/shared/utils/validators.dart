/// Class of validation functions that the app will use
///   - This class should be used as a mixin using the `with` keyword
class Validators {
  static String? validateName(String? value) {
    if (value!.isEmpty) {
      return 'user name field cannot be empty';
    } else if (value.length < 3) {
      return 'Entry is too short';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'password field cannot be empty';
    } else if (value.length < 8) {
      return 'password is too short';
    }
    return null;
  }
}
