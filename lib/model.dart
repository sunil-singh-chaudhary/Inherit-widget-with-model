class model implements hideData {
  // String name;
  // String password;
  // model({required this.name, required this.password});
  @override
  String name() {
    String name = "ROcky";
    return name;
  }

  @override
  String dob() {
    String dob = "09/01/1987";
    return dob;
  }
}

abstract class hideData {
  String name();
  String dob();
}
