class PhoneUtility {
  final num phone;
  PhoneUtility(num number)
      : assert(number != null),
        this.phone = number;
  bool validatePhoneNumber() {
    return phone.toString().length == 10;
  }
}
