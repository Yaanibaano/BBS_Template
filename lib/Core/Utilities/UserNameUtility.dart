class UserNameUtility {
  static int firstnameMaxLimit = 10;
  static int secondnameMaxLimit = 10;
  final String firstname;
  final String secondname;

  UserNameUtility(String fname, String sname)
      : this.firstname = fname,
        this.secondname = sname;

  bool validateUserName() {
    return (firstname.length <= firstnameMaxLimit &&
        secondname.length <= secondnameMaxLimit);
  }
}
