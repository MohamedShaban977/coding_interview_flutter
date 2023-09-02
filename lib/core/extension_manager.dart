extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return "";
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return 0;
    } else {
      return this!;
    }
  }
}

extension NonNullDouble on double? {
  double orZero() {
    if (this == null) {
      return 0.0;
    } else {
      return this!;
    }
  }
}

extension NonNullBool on bool? {
  bool orEmptyB() {
    if (this == null) {
      return false;
    } else {
      return this!;
    }
  }
}

extension NonNullList<T> on List<T>? {
  List<T> orEmptyList() {
    if (this == null) {
      return [];
    } else {
      return this!;
    }
  }
}