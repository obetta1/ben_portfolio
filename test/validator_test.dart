import 'package:benjamin_portfolio/shared/utils/validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test for correct input', () {
    ///this function returns null if the length of inputed string is more that 3
    String? result = Validators.validateName("Benjamin");
    expect(result, null);
  });

  test('test for incorrect input', () {
    ///this function returns error if the length of imputed string is les than 3
    String? result = Validators.validateName("Be");
    expect(result, 'Entry is too short');
  });
  test('test for empty input field', () {
    ///this function returns error if the imput field is empty
    String? result = Validators.validateName("");
    expect(result, "user name field cannot be empty");
  });

  test('test for correct password', () {
    ///this function returns null if the length of inputed string is more that 3
    String? result = Validators.validatePassword("Password123");
    expect(result, null);
  });
  test('test for incorrect password', () {
    ///this function returns error if the length of imputed string is les than 3
    String? result = Validators.validatePassword("Be");
    expect(result, 'password is too short');
  });
  test('test for empty input field', () {
    ///this function returns error if the imput field is empty
    String? result = Validators.validatePassword("");
    expect(result, 'password field cannot be empty');
  });
}
