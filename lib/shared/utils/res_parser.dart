class Res {
  static parseString(dynamic value) => value.toString();

  static int? parseInt(dynamic value) {
    if (value is String) {
      return int.tryParse(value);
    }
    if (value is int) return value;
    if (value is double) return value.round();
    return null;
  }

  static double? parseDouble(dynamic value) {
    if (value is String) {
      return double.tryParse(value);
    }
    if (value is double) return value;
    if (value is int) return double.tryParse(value.toString());
    return null;
  }

  static num? parseNum(dynamic value) {
    if (value is String) {
      return num.tryParse(value);
    }
    if (value is num) return value;
    return null;
  }
}
