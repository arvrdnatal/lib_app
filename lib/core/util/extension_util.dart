extension GeneralExtensions<T> on T {
  bool isNull() {
    return this == null;
  }

  bool isNotNull() {
    return this != null;
  }

  R let<R>(R Function(T it) op) {
    return op(this);
  }
}